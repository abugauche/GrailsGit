package grailsgit

class Site {

    String name
    String idSite
    Boolean active

    static hasMany = [categories:Category]

    static constraints = {
    }
}
