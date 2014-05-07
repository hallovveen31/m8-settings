.class public Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcTelephonyPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;,
        Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;,
        Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;
    }
.end annotation


# static fields
.field protected static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected static mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;


# instance fields
.field protected event:I

.field protected mSummaryType:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "summaryType"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    invoke-direct {p0, p3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->initial(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "summaryType"
    .parameter "defStyle"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    invoke-direct {p0, p3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->initial(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V
    .locals 0
    .parameter "context"
    .parameter "summaryType"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-direct {p0, p2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->initial(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V

    .line 168
    return-void
.end method

.method private getPhoneTypeName(I)Ljava/lang/String;
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 385
    packed-switch p1, :pswitch_data_0

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 387
    :pswitch_0
    const-string v0, "GSM"

    goto :goto_0

    .line 389
    :pswitch_1
    const-string v0, "CDMA"

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSimStateDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "simState"

    .prologue
    .line 403
    packed-switch p1, :pswitch_data_0

    .line 421
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 407
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 409
    :pswitch_1
    const-string v0, "Ready"

    goto :goto_0

    .line 411
    :pswitch_2
    const-string v0, "No SIM card"

    goto :goto_0

    .line 414
    :pswitch_3
    const-string v0, "Locked (requires the user\'s SIM PIN to unlock)"

    goto :goto_0

    .line 416
    :pswitch_4
    const-string v0, "Locked (requires the user\'s SIM PUK to unlock)"

    goto :goto_0

    .line 418
    :pswitch_5
    const-string v0, "Locked (requries a network PIN to unlock)"

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private initial(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;)V
    .locals 3
    .parameter "summaryType"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mSummaryType:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->updateSummary()V

    .line 186
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 188
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 190
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const-string v1, "#####"

    const-string v2, "########phone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method


# virtual methods
.method protected getDataStateDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "dataState"

    .prologue
    .line 360
    packed-switch p1, :pswitch_data_0

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 362
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b64

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b65

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b66

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b67

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public installListener()V
    .locals 3

    .prologue
    .line 433
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;->$SwitchMap$com$android$settings$framework$preference$telephony$HtcTelephonyPreference$SummaryType:[I

    iget-object v1, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mSummaryType:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 442
    :sswitch_0
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;-><init>(Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    .line 445
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    iget v2, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->event:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 433
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public uninstallListener()V
    .locals 3

    .prologue
    .line 451
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyPreferenceListener:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$HtcTelephonyPreferenceListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 455
    :cond_0
    return-void
.end method

.method public updateSummary()V
    .locals 6

    .prologue
    const v5, 0x7f0c0e5f

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 197
    .local v1, summary:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$1;->$SwitchMap$com$android$settings$framework$preference$telephony$HtcTelephonyPreference$SummaryType:[I

    iget-object v4, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mSummaryType:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    invoke-virtual {v4}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    :goto_1
    return-void

    .line 202
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0e5b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getDataStateDescription(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    const/16 v3, 0x40

    iput v3, p0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->event:I

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0e51

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 213
    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0e52

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 221
    goto :goto_0

    .line 226
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 228
    goto :goto_0

    .line 234
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0e53

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 236
    goto :goto_0

    .line 241
    :pswitch_5
    const-string v2, "Network country ISO"

    .line 242
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 243
    goto :goto_0

    .line 248
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 250
    goto/16 :goto_0

    .line 255
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 257
    goto/16 :goto_0

    .line 262
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0e5e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b5f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    :goto_2
    goto/16 :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b60

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 273
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0e59

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 277
    .local v0, networkType:I
    if-nez v0, :cond_2

    .line 279
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    .line 281
    :cond_2
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    goto/16 :goto_0

    .line 286
    .end local v0           #networkType:I
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06f8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    goto/16 :goto_0

    .line 291
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0e5d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    const-string v1, "0"

    .line 294
    goto/16 :goto_0

    .line 299
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06f9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 310
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06fa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 319
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 320
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 329
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06fc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 331
    goto/16 :goto_0

    .line 336
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    sget-object v3, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getSimStateDescription(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    goto/16 :goto_0

    .line 348
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0b48

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
