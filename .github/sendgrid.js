#! /usr/bin/env node

const sgMail = require('@sendgrid/mail');
sgMail.setApiKey(process.env.SENDGRID_API_KEY);

const msg = {
    to: process.env.TO,
    from: process.env.FROM,
    subject: "📊 Weekly GitHub Clone Stats for example-flutter-passkeys",
    text: "Hi,\n" +
        "\n" +
        "Here are the clone stats for example-flutter-passkeys this week:\n" +
        "\n" +
        `🔁 Total Clones: ${process.env.COUNT}\n` +
        `👤 Unique Cloners: ${process.env.UNIQUE_COUNT}\n` +
        "\n" +
        "– GitHub Bot"
};

sgMail
    .send(msg)
    .then(() => console.log('Mail sent successfully'))
    .catch(error => console.error(error.toString()));