import { Controller } from "stimulus"

export default class extends Controller {
    static values = { input: String }

    submit() {
        event.preventDefault()
        debugger
        console.log(this.inputValue);
    }

    connect() {
    }
}
