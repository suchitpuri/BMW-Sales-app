

import org.junit.*
import grails.test.mixin.*

@TestFor(DealerDailyDataController)
@Mock(DealerDailyData)
class DealerDailyDataControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/dealerDailyData/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.dealerDailyDataInstanceList.size() == 0
        assert model.dealerDailyDataInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.dealerDailyDataInstance != null
    }

    void testSave() {
        controller.save()

        assert model.dealerDailyDataInstance != null
        assert view == '/dealerDailyData/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/dealerDailyData/show/1'
        assert controller.flash.message != null
        assert DealerDailyData.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerDailyData/list'

        populateValidParams(params)
        def dealerDailyData = new DealerDailyData(params)

        assert dealerDailyData.save() != null

        params.id = dealerDailyData.id

        def model = controller.show()

        assert model.dealerDailyDataInstance == dealerDailyData
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerDailyData/list'

        populateValidParams(params)
        def dealerDailyData = new DealerDailyData(params)

        assert dealerDailyData.save() != null

        params.id = dealerDailyData.id

        def model = controller.edit()

        assert model.dealerDailyDataInstance == dealerDailyData
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerDailyData/list'

        response.reset()

        populateValidParams(params)
        def dealerDailyData = new DealerDailyData(params)

        assert dealerDailyData.save() != null

        // test invalid parameters in update
        params.id = dealerDailyData.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/dealerDailyData/edit"
        assert model.dealerDailyDataInstance != null

        dealerDailyData.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/dealerDailyData/show/$dealerDailyData.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        dealerDailyData.clearErrors()

        populateValidParams(params)
        params.id = dealerDailyData.id
        params.version = -1
        controller.update()

        assert view == "/dealerDailyData/edit"
        assert model.dealerDailyDataInstance != null
        assert model.dealerDailyDataInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/dealerDailyData/list'

        response.reset()

        populateValidParams(params)
        def dealerDailyData = new DealerDailyData(params)

        assert dealerDailyData.save() != null
        assert DealerDailyData.count() == 1

        params.id = dealerDailyData.id

        controller.delete()

        assert DealerDailyData.count() == 0
        assert DealerDailyData.get(dealerDailyData.id) == null
        assert response.redirectedUrl == '/dealerDailyData/list'
    }
}
