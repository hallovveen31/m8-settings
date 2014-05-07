.class public abstract Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;
.super Ljava/lang/Object;
.source "HtcAbsRoamingStateNotifier.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegister:Lcom/android/settings/framework/content/HtcIRegister;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    iput-object p1, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final acquireTelephonyService()Landroid/telephony/TelephonyManager;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->TAG:Ljava/lang/String;

    const-string v1, "The telephony service should not be null."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getPhoneStateEventType()I
.end method

.method protected final getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->onCreatePhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method protected final getRegister()Lcom/android/settings/framework/content/HtcIRegister;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->onCreateRegister(Landroid/content/Context;)Lcom/android/settings/framework/content/HtcIRegister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mRegister:Lcom/android/settings/framework/content/HtcIRegister;

    return-object v0
.end method

.method public final getRoamingStateText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getRoamingState()Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->getStateTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    return-void
.end method

.method protected final notifyChange()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mListener:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getRoamingStateText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mListener:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;->onRoamingStateChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract onCreatePhoneStateListener()Landroid/telephony/PhoneStateListener;
.end method

.method protected onCreateRegister(Landroid/content/Context;)Lcom/android/settings/framework/content/HtcIRegister;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPauseInBackground(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->acquireTelephonyService()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public final onResumeInBackground(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->acquireTelephonyService()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getPhoneStateEventType()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public final setOnRoamingStateChangedListener(Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->mListener:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;

    return-void
.end method
