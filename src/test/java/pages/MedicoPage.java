package com.tcc.saude.test.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MedicoPage {

    @FindBy(how = How.ID)
    public WebElement nome;

    @FindBy(how = How.ID)
    public WebElement crm;

    @FindBy(how = How.ID)
    public WebElement telefone;

    @FindBy(how = How.ID)
    public WebElement especialidade;

    @FindBy(how = How.ID)
    public WebElement email;

    @FindBy(how = How.ID)
    public WebElement salvar;


    public void ClickSalvar() {

        salvar.submit();

    }
}