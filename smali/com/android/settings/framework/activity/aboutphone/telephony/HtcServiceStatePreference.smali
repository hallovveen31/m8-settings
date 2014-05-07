.class public Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcServiceStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$1;,
        Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->initial(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->initial(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->initial(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private initial(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    new-instance v1, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference$1;)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0b68

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0b5b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0b5c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0b5e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public registerIntent()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    return-void
.end method

.method public unregisterIntent()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    return-void
.end method
