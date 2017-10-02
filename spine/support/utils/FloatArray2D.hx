package spine.support.utils;

abstract FloatArray2D(Array<FloatArray>) from Array<FloatArray> to Array<FloatArray> {

    inline public function new(capacity:Int = 16) {
        return new Array();
    }

    public var items(get,never):FloatArray2D;
    inline function get_items():FloatArray2D {
        return this;
    }

    public var size(get,never):Int;
    inline function get_size():Int {
        return this.length;
    }

    inline public function clear():Void {
        this.splice(0, this.length);
    }

    inline public function setSize(size:Int):FloatArray2D {
        var len = this.length;
        if (len > size) {
            this.splice(size, size - len);
        }
        else if (len < size) {
            while (len < size) {
                this.push(0);
                len++;
            }
        }
        return this;
    }

    inline public function add(item:FloatArray):Void {
        this.push(item);
    }

    inline public function removeIndex(index:Int):Void {
        this.splice(index, 1);
    }

}
