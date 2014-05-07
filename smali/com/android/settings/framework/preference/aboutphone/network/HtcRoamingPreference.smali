.class public Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcRoamingPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNotifier:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method


# virtual methods
.method public attachRoamingStateNotifier(Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;)V
    .locals 2
    .parameter "notifier"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->mNotifier:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;

    .line 70
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->mNotifier:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference$1;-><init>(Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;)V

    invoke-interface {v0, v1}, Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;->setOnRoamingStateChangedListener(Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;)V

    .line 78
    return-void
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e5e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->mNotifier:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;

    invoke-interface {v1}, Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;->getRoamingStateText()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, statusText:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetSummaryInBackground(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-object v0
.end method
