

import org.junit.*
import grails.test.mixin.*

@TestFor(OutletController)
@Mock(Outlet)
class OutletControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/outlet/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.outletInstanceList.size() == 0
        assert model.outletInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.outletInstance != null
    }

    void testSave() {
        controller.save()

        assert model.outletInstance != null
        assert view == '/outlet/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/outlet/show/1'
        assert controller.flash.message != null
        assert Outlet.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/outlet/list'

        populateValidParams(params)
        def outlet = new Outlet(params)

        assert outlet.save() != null

        params.id = outlet.id

        def model = controller.show()

        assert model.outletInstance == outlet
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/outlet/list'

        populateValidParams(params)
        def outlet = new Outlet(params)

        assert outlet.save() != null

        params.id = outlet.id

        def model = controller.edit()

        assert model.outletInstance == outlet
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/outlet/list'

        response.reset()

        populateValidParams(params)
        def outlet = new Outlet(params)

        assert outlet.save() != null

        // test invalid parameters in update
        params.id = outlet.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/outlet/edit"
        assert model.outletInstance != null

        outlet.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/outlet/show/$outlet.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        outlet.clearErrors()

        populateValidParams(params)
        params.id = outlet.id
        params.version = -1
        controller.update()

        assert view == "/outlet/edit"
        assert model.outletInstance != null
        assert model.outletInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/outlet/list'

        response.reset()

        populateValidParams(params)
        def outlet = new Outlet(params)

        assert outlet.save() != null
        assert Outlet.count() == 1

        params.id = outlet.id

        controller.delete()

        assert Outlet.count() == 0
        assert Outlet.get(outlet.id) == null
        assert response.redirectedUrl == '/outlet/list'
    }
}
