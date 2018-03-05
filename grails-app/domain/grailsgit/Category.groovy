package grailsgit

class Category {

    String name
    String urlImage
    Integer visit

    static belongsTo = [site: Site]

    static constraints = {
    }
}
