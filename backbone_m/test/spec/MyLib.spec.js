//require(['../../app/scripts/MyLib'], function (MyLib) {
define(['MyLib'], function (MyLib) {
    var lib;
    describe("Testing one two ...", function () {
        beforeEach(function () {
            lib = new MyLib();
        });

        it("should add", function () {
            expect(lib.add(4, 5)).to.equal(9);
            expect(lib.add(4, 5)).to.equal(1);
        });
    });
});