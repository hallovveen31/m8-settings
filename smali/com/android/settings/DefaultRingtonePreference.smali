.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/htc/preference/HtcRingtonePreference;
.source "DefaultRingtonePreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DefaultRingtonePreference"


# instance fields
.field protected mDlgTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v2, 0x1010093

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDialogTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/preference/HtcRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getRingtoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0df0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.extra.ringtone.TITLE"

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    return-void
.end method
