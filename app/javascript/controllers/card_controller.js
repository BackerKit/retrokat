import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["input", "newcard"]

    submit() {
        event.preventDefault()
        this.sendToRails(this.newcardTarget)
    }

    sendToRails(stuff) {
        var words = this.inputTarget.value

        $.ajax({
            url: "/cards",
            data: { card: { text: this.inputTarget.value } },
            type: 'post',
            success: function() {
                $(stuff).append("<div style=\"border:1px black solid\">" + words + "</div>")
            }
        })
    }

    connect() {
    }
}
