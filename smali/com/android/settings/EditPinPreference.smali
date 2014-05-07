.class Lcom/android/settings/EditPinPreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPinPreference$onCreateDialogListener;,
        Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mCreateDialogListener:Lcom/android/settings/EditPinPreference$onCreateDialogListener;

.field private mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/EditPinPreference;I)I
    .locals 0

    iput p1, p0, Lcom/htc/preference/HtcDialogPreference;->mWhichButtonClicked:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/EditPinPreference;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    const v2, 0x1020003

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/16 v2, 0x903

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    new-array v0, v3, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance v2, Lcom/android/settings/EditPinPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/EditPinPreference$1;-><init>(Lcom/android/settings/EditPinPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/EditPinPreference;->mCreateDialogListener:Lcom/android/settings/EditPinPreference$onCreateDialogListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/EditPinPreference;->mCreateDialogListener:Lcom/android/settings/EditPinPreference$onCreateDialogListener;

    invoke-interface {v1, v0}, Lcom/android/settings/EditPinPreference$onCreateDialogListener;->onCreateDialog(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings/EditPinPreference;Z)V

    :cond_0
    return-void
.end method

.method public setOnCreateDialogListener(Lcom/android/settings/EditPinPreference$onCreateDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mCreateDialogListener:Lcom/android/settings/EditPinPreference$onCreateDialogListener;

    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    return-void
.end method

.method public showPinDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcDialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
