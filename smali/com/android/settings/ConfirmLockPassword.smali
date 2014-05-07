.class public Lcom/android/settings/ConfirmLockPassword;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 88
    return-void
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 355
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x2010047

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 356
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 357
    .local v0, color:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 70
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword;->getThemeColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    const v1, 0x7f0c0f20

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 85
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/ConfirmLockPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
