.class public Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcCustomNotificationReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final INTENT_SETTINGS_CUSTOMIZATION_CHECK_POINT:Ljava/lang/String;

.field private final mAlarmInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const-string v0, "com.htc.intent.action.SETTINGS_CUSTOMIZATION_CHECK_POINT"

    iput-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->INTENT_SETTINGS_CUSTOMIZATION_CHECK_POINT:Ljava/lang/String;

    .line 36
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->mAlarmInterval:I

    return-void
.end method

.method private getCustomIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .parameter "context"

    .prologue
    .line 90
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 91
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "settings_custom_action"

    const-string v5, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, action:Ljava/lang/String;
    const-string v4, "settings_custom_reason"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, reason:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-class v4, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    return-object v1
.end method

.method private isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "serviceClassName"

    .prologue
    .line 105
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 106
    .local v0, am:Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 108
    .local v3, runningServiceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 109
    .local v2, rs:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    sget-object v4, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v5, "CheckPoint#5"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v4, 0x1

    .line 115
    .end local v2           #rs:Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v4

    .line 114
    :cond_1
    sget-object v4, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v5, "CheckPoint#6"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private saveCustomIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, reason:Ljava/lang/String;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 78
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "settings_custom_action"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v4, "settings_custom_reason"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method private setAlarm(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;

    invoke-direct {v7, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v7, alarmIntent:Landroid/content/Intent;
    const-string v2, "com.htc.intent.action.SETTINGS_CUSTOMIZATION_CHECK_POINT"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 127
    .local v0, alarmManager:Landroid/app/AlarmManager;
    if-eqz p2, :cond_1

    .line 129
    const/high16 v2, 0x800

    invoke-static {p1, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 130
    .local v6, pending:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 131
    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Set alarm"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 133
    .end local v6           #pending:Landroid/app/PendingIntent;
    :cond_1
    const/high16 v2, 0x2000

    invoke-static {p1, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 134
    .restart local v6       #pending:Landroid/app/PendingIntent;
    if-eqz v6, :cond_0

    .line 135
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 136
    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cancel alarm"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    sget-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.settings.action.CUSTOMIZATION_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CheckPoint#2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1, v3}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->setAlarm(Landroid/content/Context;Z)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CheckPoint#1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p1, v4}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->setAlarm(Landroid/content/Context;Z)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->saveCustomIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    const-class v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.SETTINGS_CUSTOMIZATION_CHECK_POINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_customization_completed"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 60
    sget-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CheckPoint#3"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0, p1, v3}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->setAlarm(Landroid/content/Context;Z)V

    goto :goto_0

    .line 63
    :cond_3
    const-class v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CheckPoint#4"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->getCustomIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
