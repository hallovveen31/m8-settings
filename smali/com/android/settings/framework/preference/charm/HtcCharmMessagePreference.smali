.class public final Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcCharmMessagePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "charm_message"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->initialize(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->initialize(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "charm_message"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setKey(Ljava/lang/String;)V

    .line 68
    :cond_0
    const v1, 0x7f0c0149

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setTitle(I)V

    .line 69
    const v1, 0x7f0c014a

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setSummary(I)V

    .line 72
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setPersistent(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charm_message_notification"

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setChecked(Z)V

    .line 80
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charm_message_received_notification"

    invoke-static {v3, v4, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    .local v0, isReceived:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 103
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c014f

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0150

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0151

    new-instance v4, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$2;-><init>(Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$1;-><init>(Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    .local v1, value:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setChecked(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "charm_message_notification"

    invoke-static {v2, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .end local v1           #value:Z
    :cond_1
    move v1, v2

    .line 125
    goto :goto_1
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charm_message_notification"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setChecked(Z)V

    .line 91
    return-void
.end method
