.class public Lcom/android/settings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AirplaneModeEnabler"


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSummary:Landroid/widget/TextView;

.field private mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

.field private mSwitchHeader:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/AirplaneModeEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "switchHeader"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnabler$1;-><init>(Lcom/android/settings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeEnabler$2;-><init>(Lcom/android/settings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 81
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitchHeader:Landroid/view/View;

    .line 83
    instance-of v0, p2, Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_0

    .line 84
    check-cast p2, Lcom/htc/widget/HtcToggleButtonLight;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    .line 89
    :goto_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mSummary:Landroid/widget/TextView;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 92
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 94
    return-void

    .line 86
    .restart local p2
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 170
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 171
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move v0, v4

    .line 172
    .local v0, airplaneModeEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    .line 174
    .local v2, isDoPoweroff:Z
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez v2, :cond_7

    if-nez v0, :cond_7

    .line 176
    :cond_1
    sget-boolean v5, Lcom/android/settings/AirplaneModeEnabler;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 177
    if-eqz v0, :cond_5

    .line 178
    const-string v5, "AirplaneModeEnabler"

    const-string v6, "[ATS][com.android.settings.AirplaneModeEnabler][enable][complete]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 185
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 186
    iget-object v6, p0, Lcom/android/settings/AirplaneModeEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const v5, 0x7f0c106e

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :cond_3
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 190
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setClickable(Z)V

    .line 200
    :goto_3
    return-void

    .line 171
    .end local v0           #airplaneModeEnabled:Z
    .end local v2           #isDoPoweroff:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    .restart local v0       #airplaneModeEnabled:Z
    .restart local v2       #isDoPoweroff:Z
    :cond_5
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButtonLight;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "AirplaneModeEnabler"

    const-string v6, "[ATS][com.android.settings.AirplaneModeEnabler][disable][complete]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_6
    const v5, 0x7f0c106f

    goto :goto_2

    .line 192
    :cond_7
    const-string v5, "AirplaneModeEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected service state. isDoPoweroff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", airplaneMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 195
    .local v1, airplaneModeOn:Z
    const-string v5, "AirplaneModeEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirplaneModeOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 197
    iget-object v5, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setClickable(Z)V

    .line 198
    iget-object v4, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_3
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .parameter "enabling"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    const-string v1, "AirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set AirplaneMode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const v1, 0x7f0c0512

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 159
    return-void

    .line 142
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_2
    const v1, 0x7f0c0513

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 207
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 112
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 99
    .local v0, isEnabled:Z
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 102
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 218
    invoke-direct {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/view/View;)V
    .locals 3
    .parameter "switchHeader"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitchHeader:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitchHeader:Landroid/view/View;

    .line 117
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitchHeader:Landroid/view/View;

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcToggleButtonLight;

    iput-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    .line 119
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitchHeader:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSummary:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 124
    .local v0, isEnabled:Z
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v1, 0x7f0c106e

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0c106f

    goto :goto_1
.end method
