

import org.junit.*
import grails.test.mixin.*

@TestFor(DealerTargetController)
@Mock(DealerTarget)
class DealerTargetControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/dealerTarget/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.dealerTargetInstanceList.size() == 0
        assert model.dealerTargetInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.dealerTargetInstance != null
    }

    void testSave() {
        controller.save()

        assert model.dealerTargetInstance != null
        assert view == '/dealerTarget/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/dealerTarget/show/1'
        assert controller.flash.message != null
        assert DealerTarget.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerTarget/list'

        populateValidParams(params)
        def dealerTarget = new DealerTarget(params)

        assert dealerTarget.save() != null

        params.id = dealerTarget.id

        def model = controller.show()

        assert model.dealerTargetInstance == dealerTarget
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerTarget/list'

        populateValidParams(params)
        def dealerTarget = new DealerTarget(params)

        assert dealerTarget.save() != null

        params.id = dealerTarget.id

        def model = controller.edit()

        assert model.dealerTargetInstance == dealerTarget
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/dealerTarget/list'

        response.reset()

        populateValidParams(params)
        def dealerTarget = new DealerTarget(params)

        assert dealerTarget.save() != null

        // test invalid parameters in update
        params.id = dealerTarget.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/dealerTarget/edit"
        assert model.dealerTargetInstance != null

        dealerTarget.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/dealerTarget/show/$dealerTarget.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        dealerTarget.clearErrors()

        populateValidParams(params)
        params.id = dealerTarget.id
        params.version = -1
        controller.update()

        assert view == "/dealerTarget/edit"
        assert model.dealerTargetInstance != null
        assert model.dealerTargetInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/dealerTarget/list'

        response.reset()

        populateValidParams(params)
        def dealerTarget = new DealerTarget(params)

        assert dealerTarget.save() != null
        assert DealerTarget.count() == 1

        params.id = dealerTarget.id

        controller.delete()

        assert DealerTarget.count() == 0
        assert DealerTarget.get(dealerTarget.id) == null
        assert response.redirectedUrl == '/dealerTarget/list'
    }
}
