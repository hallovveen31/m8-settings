.class public final Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcTimeChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;,
        Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;
    }
.end annotation


# static fields
.field public static final ACTION_TIME_FORMAT_CHANGED:Ljava/lang/String; = "com.htc.intent.action.TIMEFORMAT_CHANGED"


# instance fields
.field private mOnTimeChangedListener:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->mOnTimeChangedListener:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;-><init>(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->isTimeTickAction:Z

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->mOnTimeChangedListener:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;->onTimeChanged(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->isTimeChangedAction:Z

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->isTimezoneChangedAction:Z

    goto :goto_1

    :cond_4
    const-string v1, "com.htc.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->isTimeFormatChangedAction:Z

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.htc.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->mOnTimeChangedListener:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;

    return-void
.end method
