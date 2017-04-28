function add() {
    var counter = 0;
    counter += 1;
    return counter;
}

var add2 = (function () {
    var counter = 0;
    return function () { return counter += 1; }
})();

console.log(add());
console.log(add());
console.log(add());

console.log(add2());
console.log(add2());
console.log(add2());
