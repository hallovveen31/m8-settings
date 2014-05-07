.class public Lcom/android/settings/framework/preference/sound/HtcDnDListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcDnDListPreference.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/framework/preference/sound/HtcDnDListPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDnDListPreference;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDnDListPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/preference/sound/HtcDnDListPreference;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/sound/HtcDnDListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/sound/HtcDnDListPreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onClick()V

    goto :goto_0
.end method
