# encoding: utf-8
# language:pt

Dado('que esteja na home') do
    @login.home
    expect(page).to(have_text('Dynamically Loaded Page Elements'))
end

Quando('clicar em START') do
    @login.click_start
end

Então('deverá aparecer a frase hello world') do
    pexpect(page).to(have_text('Hello World!'))
end