import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["time"];

  connect() {
    this.update();
    setInterval(() => {
      this.update();
    }, 1000);
  }

  update() {
    const now = new Date();
    const time = `${now.getHours()}:${now.getMinutes()}:${now.getSeconds()}`;
    this.timeTarget.textContent = time;
  }
}
