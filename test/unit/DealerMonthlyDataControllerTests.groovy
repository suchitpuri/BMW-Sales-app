

import org.junit.*
import grails.test.mixin.*

@TestFor(DealerMonthlyDataController)
@Mock(DealerMonthlyData)
class DealerMonthlyDataControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/dealerMonthlyData/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.dealerMonthlyDataInstanceList.size() == 0
        assert model.dealerMonthlyDataInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.dealerMonthlyDataInstance != null
    }

    void testSave() {
        controller.save()

        assert model.dealerMonthlyDataInstance != null
        assert view == '/dealerMonthlyData/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/dealerMonthlyData/show/1'
        assert controller.flash.message != null
        assert DealerMonthlyData.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerMonthlyData/list'

        populateValidParams(params)
        def dealerMonthlyData = new DealerMonthlyData(params)

        assert dealerMonthlyData.save() != null

        params.id = dealerMonthlyData.id

        def model = controller.show()

        assert model.dealerMonthlyDataInstance == dealerMonthlyData
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerMonthlyData/list'

        populateValidParams(params)
        def dealerMonthlyData = new DealerMonthlyData(params)

        assert dealerMonthlyData.save() != null

        params.id = dealerMonthlyData.id

        def model = controller.edit()

        assert model.dealerMonthlyDataInstance == dealerMonthlyData
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerMonthlyData/list'

        response.reset()

        populateValidParams(params)
        def dealerMonthlyData = new DealerMonthlyData(params)

        assert dealerMonthlyData.save() != null

        // test invalid parameters in update
        params.id = dealerMonthlyData.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/dealerMonthlyData/edit"
        assert model.dealerMonthlyDataInstance != null

        dealerMonthlyData.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/dealerMonthlyData/show/$dealerMonthlyData.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        dealerMonthlyData.clearErrors()

        populateValidParams(params)
        params.id = dealerMonthlyData.id
        params.version = -1
        controller.update()

        assert view == "/dealerMonthlyData/edit"
        assert model.dealerMonthlyDataInstance != null
        assert model.dealerMonthlyDataInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/dealerMonthlyData/list'

        response.reset()

        populateValidParams(params)
        def dealerMonthlyData = new DealerMonthlyData(params)

        assert dealerMonthlyData.save() != null
        assert DealerMonthlyData.count() == 1

        params.id = dealerMonthlyData.id

        controller.delete()

        assert DealerMonthlyData.count() == 0
        assert DealerMonthlyData.get(dealerMonthlyData.id) == null
        assert response.redirectedUrl == '/dealerMonthlyData/list'
    }
}
