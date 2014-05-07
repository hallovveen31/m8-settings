.class public Lcom/android/settings/BugreportPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "BugreportPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/BugreportPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/BugreportPreference;->initialize(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/BugreportPreference;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x10400cb

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/settings/BugreportPreference;->setTitle(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/settings/BugreportPreference;->setDialogTitle(I)V

    .line 54
    const v0, 0x10400cc

    invoke-virtual {p0, v0}, Lcom/android/settings/BugreportPreference;->setDialogMessage(I)V

    .line 55
    const v0, 0x2040285

    invoke-virtual {p0, v0}, Lcom/android/settings/BugreportPreference;->setPositiveButtonText(I)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 75
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 76
    const-string v0, "ctl.start"

    const-string v1, "bugreport"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    .line 71
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method
