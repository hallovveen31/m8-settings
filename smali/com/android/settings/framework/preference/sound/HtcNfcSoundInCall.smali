.class public final Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcNfcSoundInCall.java"


# static fields
.field public static final KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->initialize()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->initialize()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->initialize()V

    .line 88
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 96
    sget-object v2, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->setKey(Ljava/lang/String;)V

    .line 98
    :cond_0
    const v2, 0x7f0c0aeb

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->setTitle(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_nfc_sound_in_call"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, value:I
    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->setChecked(Z)V

    .line 106
    return-void

    .line 105
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->isChecked()Z

    move-result v0

    .line 112
    .local v0, on:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_nfc_sound_in_call"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcNfcSoundInCall;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
