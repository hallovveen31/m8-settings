.class public Lcom/android/settings/framework/app/HtcDndCommandService;
.super Landroid/app/IntentService;
.source "HtcDndCommandService.java"


# static fields
.field public static final ACTION_AUTO_EVENT_OFF:Ljava/lang/String; = "com.htc.settings.action.dnd_AUTO_EVENT_OFF"

.field public static final ACTION_AUTO_EVENT_ON:Ljava/lang/String; = "com.htc.settings.action.dnd_AUTO_EVENT_ON"

.field public static final ACTION_AUTO_TIMER_OFF:Ljava/lang/String; = "com.htc.settings.action.dnd.AUTO_TIME_OFF"

.field public static final ACTION_CALENDAR_EVENT_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final ACTION_DISABLE_RUNNING_EVENT:Ljava/lang/String; = "com.htc.settings.action.dnd_disable_running_event"

.field public static final ACTION_QS_UPDATE:Ljava/lang/String; = "com.htc.settings.action.dnd.QS_UPDATE"

.field public static final ACTION_RESCHEDULE_EVENT_TIMER:Ljava/lang/String; = "com.htc.settings.action.dnd_RESCHEDULE_EVENT_TIMER"

.field public static final ACTION_UPDATE_NOTIFICATION:Ljava/lang/String; = "com.htc.settings.action.dnd.UPDATE_NOTIFICATION"

.field public static final ACTION_USER_CANCEL_NOTIFICATION:Ljava/lang/String; = "com.htc.settings.action.dnd.USER_CANCEL_NOTIFICATION"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DEF_OFF_BY_TIMER_VALUE:Ljava/lang/String; = "-1"

.field public static final INTENT_KEY_SCHEDULE_ENABLE:Ljava/lang/String; = "intent_key_schedule_enable"

.field public static final INTENT_KEY_SCHEDULE_ID:Ljava/lang/String; = "intent_key_schedule_id"

.field public static final INTENT_KEY_UPDATE_RINGER_MODE:Ljava/lang/String; = "intent_key_update_ringer_mode"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "com.android.settings.framework.core.service.HtcDndCommandService"

.field private static final TAG:Ljava/lang/String;

.field private static mPendingIntentEventOff:Landroid/app/PendingIntent;

.field private static mPendingIntentEventOn:Landroid/app/PendingIntent;

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/framework/app/HtcDndCommandService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/android/settings/framework/app/HtcDndCommandService;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method private addCalendarTimeSlot(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;J)V
    .locals 12
    .parameter "controller"
    .parameter "curMillis"

    .prologue
    .line 399
    const-wide/16 v5, 0x1e

    invoke-static {p0, v5, v6}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getCalendarEvent(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v7

    .line 400
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 441
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 405
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 409
    :cond_1
    new-instance v9, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 416
    .local v9, localTime:Landroid/text/format/Time;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 418
    :cond_2
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 419
    .local v1, startMillis:J
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 420
    .local v3, endMillis:J
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 421
    .local v11, startDay:I
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 422
    .local v8, endDay:I
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 425
    .local v10, nAllDay:I
    invoke-static {v9, v10, v1, v2, v11}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustStartMillis(Landroid/text/format/Time;IJI)J

    move-result-wide v1

    .line 428
    invoke-static {v9, v10, v3, v4, v8}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustEndMillis(Landroid/text/format/Time;IJI)J

    move-result-wide v3

    .line 431
    cmp-long v0, p2, v3

    if-ltz v0, :cond_3

    .line 438
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 440
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 435
    :cond_3
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->addTimeSlot(JJII)Z

    goto :goto_1
.end method

.method private addNotification(IZ)V
    .locals 10
    .parameter "mode"
    .parameter "bTimerEnabled"

    .prologue
    const v9, 0x7f0c06d0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 752
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 755
    .local v0, builder:Landroid/app/Notification$Builder;
    const v4, 0x7f0201fd

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 756
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 758
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 759
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 762
    if-nez p1, :cond_0

    .line 763
    const v4, 0x7f0c06ce

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcDndCommandService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 771
    :goto_0
    if-nez p1, :cond_2

    .line 772
    if-ne p2, v7, :cond_1

    .line 773
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getNotificationSummaryByMinutes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 782
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.settings.action.dnd.USER_CANCEL_NOTIFICATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 784
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 785
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 787
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcDndCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 788
    .local v2, mgr:Landroid/app/NotificationManager;
    const-string v4, "com.android.settings.framework.core.service.HtcDndCommandService"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v7, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 789
    return-void

    .line 765
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mgr:Landroid/app/NotificationManager;
    .end local v3           #pi:Landroid/app/PendingIntent;
    :cond_0
    const v4, 0x7f0c06cf

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getUntilMillisInText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/framework/app/HtcDndCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/app/HtcDndCommandService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 778
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/app/HtcDndCommandService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private addScheduleTimeSlot(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;JLjava/util/ArrayList;)V
    .locals 30
    .parameter "controller"
    .parameter "curMillis"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;>;"
    if-nez p4, :cond_1

    .line 298
    :cond_0
    return-void

    .line 198
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 203
    .local v21, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v29

    .line 204
    .local v29, startTimeCalendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 210
    .local v20, endTimeCalendar:Ljava/util/Calendar;
    const/16 v19, 0x0

    .line 212
    .local v19, bIsOverDay:Z
    :cond_2
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    .line 214
    .local v10, record:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;
    invoke-virtual {v10}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    const/16 v18, 0x0

    .line 221
    .local v18, bFound:Z
    move-object/from16 v0, v29

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 222
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 225
    const/16 v3, 0xb

    invoke-virtual {v10}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartHour()I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 226
    const/16 v3, 0xc

    invoke-virtual {v10}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartMinute()I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 229
    const/16 v3, 0xb

    invoke-virtual {v10}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndHour()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 230
    const/16 v3, 0xc

    invoke-virtual {v10}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndMinute()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 233
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustEndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v19

    .line 235
    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 236
    .local v6, startMillis:J
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 246
    .local v8, endMillis:J
    invoke-virtual {v10}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v3

    if-nez v3, :cond_5

    .line 248
    cmp-long v3, p2, v6

    if-gez v3, :cond_4

    .line 249
    const/16 v18, 0x1

    .line 292
    :cond_3
    :goto_1
    if-eqz v18, :cond_2

    .line 293
    const/16 v16, 0x1

    invoke-virtual {v10}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getAllowedContacts()I

    move-result v17

    move-object/from16 v11, p1

    move-wide v12, v6

    move-wide v14, v8

    invoke-virtual/range {v11 .. v17}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->addTimeSlot(JJII)Z

    goto :goto_0

    .line 252
    :cond_4
    cmp-long v3, p2, v8

    if-gez v3, :cond_3

    .line 253
    const/16 v18, 0x1

    goto :goto_1

    .line 263
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    .line 264
    const-wide/32 v3, 0x5265c00

    sub-long v24, v6, v3

    .line 265
    .local v24, prevDayStartMillis:J
    const-wide/32 v3, 0x5265c00

    sub-long v22, v8, v3

    .line 266
    .local v22, prevDayEndMillis:J
    cmp-long v3, v24, p2

    if-gez v3, :cond_6

    cmp-long v3, p2, v22

    if-gez v3, :cond_6

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v26

    .line 268
    .local v26, prevStartCalendar:Ljava/util/Calendar;
    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 269
    invoke-virtual {v10}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v3

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/android/settings/framework/util/HtcScheduleUtil;->isBelongToRepeatDay(Ljava/util/Calendar;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 270
    move-wide/from16 v6, v24

    .line 271
    move-wide/from16 v8, v22

    .line 272
    const/16 v18, 0x1

    .line 278
    .end local v22           #prevDayEndMillis:J
    .end local v24           #prevDayStartMillis:J
    .end local v26           #prevStartCalendar:Ljava/util/Calendar;
    :cond_6
    if-nez v18, :cond_3

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    .line 279
    invoke-direct/range {v3 .. v10}, Lcom/android/settings/framework/app/HtcDndCommandService;->getShiftTimeToNextRepeatDay(JJJLcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)J

    move-result-wide v27

    .line 282
    .local v27, shiftMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-nez v3, :cond_7

    .line 283
    const/16 v18, 0x1

    goto :goto_1

    .line 284
    :cond_7
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-lez v3, :cond_3

    .line 285
    add-long v6, v6, v27

    .line 286
    add-long v8, v8, v27

    .line 287
    const/16 v18, 0x1

    goto :goto_1
.end method

.method private addTimer()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 832
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/app/HtcDndCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 833
    .local v0, mgr:Landroid/app/AlarmManager;
    if-nez v0, :cond_1

    .line 834
    sget-boolean v5, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 835
    sget-object v5, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v6, "addTimer, unable to get AlarmManager"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_dnd_off_by_timer"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 842
    .local v1, minutes:I
    sget-boolean v5, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 843
    sget-object v5, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addTimer, minutes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_2
    if-eq v1, v8, :cond_0

    .line 851
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getAutoOffIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 853
    .local v4, pi:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 854
    .local v2, offTime:J
    const v5, 0xea60

    mul-int/2addr v5, v1

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 856
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 391
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 392
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 393
    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private broadcastDndStatus(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 915
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.contacts.presence.ACTION_SET_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mode"

    const-string v2, "DND"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v1, "enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 918
    const-string v1, "package_name"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    const-string v1, "com.htc.permission.APP_SHARED"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/app/HtcDndCommandService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    .line 827
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcDndCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 828
    .local v0, mgr:Landroid/app/NotificationManager;
    const-string v1, "com.android.settings.framework.core.service.HtcDndCommandService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 829
    return-void
.end method

.method private cancelTimer()V
    .locals 4

    .prologue
    .line 860
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcDndCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 861
    .local v0, mgr:Landroid/app/AlarmManager;
    if-nez v0, :cond_1

    .line 862
    sget-boolean v2, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 863
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v3, "addTimer, unable to get AlarmManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getAutoOffIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 869
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private clearRingerModeFlag()V
    .locals 3

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_original_ringer_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1008
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_ringer_mode_changed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1010
    return-void
.end method

.method private disableCalendarDndEvent(J)I
    .locals 28
    .parameter "curMillis"

    .prologue
    .line 302
    const-wide/16 v25, 0x1e

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getCalendarEvent(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v9

    .line 303
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 304
    const/16 v19, 0x0

    .line 386
    :cond_0
    :goto_0
    return v19

    .line 307
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v25

    if-gtz v25, :cond_2

    .line 308
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 309
    const/16 v19, 0x0

    goto :goto_0

    .line 312
    :cond_2
    const/16 v19, 0x0

    .line 313
    .local v19, nCount:I
    new-instance v17, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 323
    .local v17, localTime:Landroid/text/format/Time;
    const/16 v20, 0x0

    .line 324
    .local v20, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x0

    .line 325
    .local v11, dndEventUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 328
    .local v10, deleteUri:Landroid/net/Uri;
    const-string v24, "event_id=?"

    .line 330
    .local v24, where:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 332
    :cond_3
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 333
    .local v22, startMillis:J
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 334
    .local v14, endMillis:J
    const/16 v25, 0x5

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 335
    .local v21, startDay:I
    const/16 v25, 0x7

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 336
    .local v13, endDay:I
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 339
    .local v18, nAllDay:I
    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v22

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustStartMillis(Landroid/text/format/Time;IJI)J

    move-result-wide v22

    .line 342
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v14, v15, v13}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustEndMillis(Landroid/text/format/Time;IJI)J

    move-result-wide v14

    .line 347
    cmp-long v25, p1, v22

    if-ltz v25, :cond_4

    cmp-long v25, p1, v14

    if-lez v25, :cond_5

    .line 371
    :cond_4
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-nez v25, :cond_3

    .line 373
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 376
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_0

    .line 378
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "com.android.calendar"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 379
    :catch_0
    move-exception v12

    .line 380
    .local v12, e:Ljava/lang/Exception;
    sget-boolean v25, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v25, :cond_0

    .line 381
    sget-object v25, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "disableCalendarDndEvent, applyBatch, e = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 351
    .end local v12           #e:Ljava/lang/Exception;
    :cond_5
    if-nez v20, :cond_6

    .line 352
    new-instance v20, Ljava/util/ArrayList;

    .end local v20           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .restart local v20       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_6
    if-nez v11, :cond_7

    .line 356
    const-string v25, "content://com.android.calendar/dnd_events"

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 359
    :cond_7
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 360
    .local v16, eventId:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, accountName:Ljava/lang/String;
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, accountType:Ljava/lang/String;
    invoke-static {v11, v5, v6}, Lcom/android/settings/framework/app/HtcDndCommandService;->appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 364
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v7, v0, [Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v7, v25

    .line 365
    .local v7, args:[Ljava/lang/String;
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 366
    .local v8, cpoBuilder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 367
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1
.end method

.method private disableCurrentEvent()V
    .locals 5

    .prologue
    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 718
    .local v0, curMillis:J
    new-instance v2, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;-><init>(Landroid/content/Context;)V

    .line 719
    .local v2, mgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;
    invoke-virtual {v2, v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->disableCurrentEvent(J)I

    move-result v4

    .line 722
    .local v4, nScheduling:I
    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/app/HtcDndCommandService;->disableCalendarDndEvent(J)I

    move-result v3

    .line 725
    .local v3, nCalendar:I
    if-gtz v4, :cond_0

    if-lez v3, :cond_1

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->showDisableActiveEventToast()V

    .line 728
    :cond_1
    return-void
.end method

.method private getAutoOffIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 873
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.settings.action.dnd.AUTO_TIME_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 875
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 877
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getNotificationSummaryByMinutes()Ljava/lang/String;
    .locals 9

    .prologue
    const v7, 0x7f0c06d0

    .line 793
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, entries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 795
    .local v4, values:[Ljava/lang/String;
    array-length v2, v4

    .line 797
    .local v2, length:I
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_dnd_off_by_timer"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, timerValue:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 802
    sget-boolean v5, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 803
    sget-object v5, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v6, "getNotificationSummaryByMinutes, timer is not set"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settings/framework/app/HtcDndCommandService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 823
    :goto_0
    return-object v5

    .line 808
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 810
    const-string v5, "-1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 811
    invoke-virtual {p0, v7}, Lcom/android/settings/framework/app/HtcDndCommandService;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 814
    :cond_2
    aget-object v5, v4, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 815
    const v5, 0x7f0c06d1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v0, v1

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/framework/app/HtcDndCommandService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 808
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 819
    :cond_4
    sget-boolean v5, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 820
    sget-object v5, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNotificationSummaryByMinutes, can\'t find value for timerValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getShiftTimeToNextRepeatDay(JJJLcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)J
    .locals 7
    .parameter "curMillis"
    .parameter "orgStartMillis"
    .parameter "orgEndMillis"
    .parameter "record"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x7

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 163
    .local v0, curCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 164
    invoke-virtual {p7}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v2

    .line 167
    .local v2, repeatDay:I
    invoke-static {v0, v2}, Lcom/android/settings/framework/util/HtcScheduleUtil;->isBelongToRepeatDay(Ljava/util/Calendar;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    cmp-long v5, p1, p3

    if-gez v5, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-wide v3

    .line 170
    :cond_1
    cmp-long v5, p1, p5

    if-ltz v5, :cond_0

    .line 176
    :cond_2
    const/4 v1, 0x0

    .line 179
    .local v1, nShiftDays:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 180
    const/4 v3, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->roll(II)V

    .line 182
    invoke-static {v0, v2}, Lcom/android/settings/framework/util/HtcScheduleUtil;->isBelongToRepeatDay(Ljava/util/Calendar;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 184
    const-wide/32 v3, 0x5265c00

    int-to-long v5, v1

    mul-long/2addr v3, v5

    goto :goto_0

    .line 186
    :cond_4
    if-le v1, v6, :cond_3

    .line 188
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private performDisableRunningEvent()V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->disableCurrentEvent()V

    .line 707
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    .line 708
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelTimer()V

    .line 709
    return-void
.end method

.method private performQuickSettingsUpdate()V
    .locals 1

    .prologue
    .line 649
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 656
    .local v0, bDndEnabled:Z
    if-eqz v0, :cond_0

    .line 658
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOnDndFeature(Landroid/content/Context;)V

    .line 659
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOnExtraAction()V

    .line 660
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->updateNotification()V

    .line 678
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->disableCurrentEvent()V

    .line 669
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOffDndFeature(Landroid/content/Context;)V

    .line 670
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOffExtraAction()V

    .line 673
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    .line 675
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelNotification()V

    .line 676
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelTimer()V

    goto :goto_0
.end method

.method private performTurnOffByAutoTimer()V
    .locals 0

    .prologue
    .line 696
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOffDndFeature(Landroid/content/Context;)V

    .line 697
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelNotification()V

    .line 698
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOffExtraAction()V

    .line 700
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    .line 701
    return-void
.end method

.method private performTurnOffByUserCancel()V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->disableCurrentEvent()V

    .line 687
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOffDndFeature(Landroid/content/Context;)V

    .line 689
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    .line 690
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelTimer()V

    .line 691
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOffExtraAction()V

    .line 692
    return-void
.end method

.method private performTurnOffExtraAction()V
    .locals 1

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->restoreSilentMode()V

    .line 909
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcDndCommandService;->broadcastDndStatus(Z)V

    .line 910
    return-void
.end method

.method private performTurnOnExtraAction()V
    .locals 1

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->setSilentMode()V

    .line 904
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcDndCommandService;->broadcastDndStatus(Z)V

    .line 905
    return-void
.end method

.method private rescheduleEventTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 477
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleSlotData()Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;

    move-result-object v2

    .line 478
    .local v2, slotData:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;
    invoke-direct {p0, v2}, Lcom/android/settings/framework/app/HtcDndCommandService;->setAutoEventAlarm(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;)V

    .line 480
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 481
    .local v0, dndEnabled:Z
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getCurrentDndMode(Landroid/content/Context;)I

    move-result v1

    .line 484
    .local v1, mode:I
    if-nez v2, :cond_2

    .line 485
    if-ne v0, v3, :cond_0

    .line 486
    if-nez v1, :cond_1

    .line 490
    invoke-static {p0, v3}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->setAllowedType(Landroid/content/Context;I)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOffDndFeature(Landroid/content/Context;)V

    .line 493
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelNotification()V

    .line 494
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOffExtraAction()V

    goto :goto_0

    .line 498
    :cond_2
    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/framework/app/HtcDndCommandService;->updateCurrentDndStatus(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;ZI)V

    goto :goto_0
.end method

.method private rescheduleSlotData()Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 444
    new-instance v1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;

    invoke-direct {v1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;-><init>()V

    .line 447
    .local v1, controller:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 448
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 449
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 450
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 453
    .local v2, curMillis:J
    new-instance v4, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;-><init>(Landroid/content/Context;)V

    .line 454
    .local v4, mgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;
    invoke-virtual {v4}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecords()Ljava/util/ArrayList;

    move-result-object v5

    .line 455
    .local v5, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;>;"
    invoke-direct {p0, v1, v2, v3, v5}, Lcom/android/settings/framework/app/HtcDndCommandService;->addScheduleTimeSlot(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;JLjava/util/ArrayList;)V

    .line 458
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcDndCommandService;->addCalendarTimeSlot(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;J)V

    .line 461
    invoke-virtual {v1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->addTimeSlotCompleted()V

    .line 464
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->getResultSlotData(J)Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;

    move-result-object v6

    .line 466
    .local v6, slotData:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;
    if-eqz v6, :cond_0

    .line 468
    sget-boolean v7, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 469
    invoke-virtual {v6}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->dump()V

    .line 473
    :cond_0
    return-object v6
.end method

.method private restoreSilentMode()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 967
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_dnd_ringer_mode_changed"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 969
    .local v0, bChanged:I
    if-nez v0, :cond_2

    .line 970
    sget-boolean v3, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 971
    sget-object v3, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v4, "restoreSilentMode, ignore, not changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->clearRingerModeFlag()V

    .line 1001
    :cond_1
    :goto_0
    return-void

    .line 977
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_dnd_original_ringer_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 980
    .local v2, orgMode:I
    if-ne v2, v6, :cond_3

    .line 981
    sget-boolean v3, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 982
    sget-object v3, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v4, "restoreSilentMode, ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :cond_3
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcDndCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 988
    .local v1, mgr:Landroid/media/AudioManager;
    if-nez v1, :cond_4

    .line 989
    sget-boolean v3, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 990
    sget-object v3, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v4, "restoreSilentMode, audio manager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    :cond_4
    sget-boolean v3, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 996
    sget-object v3, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreSilentMode, to orgMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_5
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1000
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->clearRingerModeFlag()V

    goto :goto_0
.end method

.method private setAutoEventAlarm(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;)V
    .locals 6
    .parameter "slotData"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 504
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/framework/app/HtcDndCommandService;->setEventOnAlarm(ZJ)V

    .line 511
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/framework/app/HtcDndCommandService;->setEventOffAlarm(ZJ)V

    .line 516
    :goto_1
    return-void

    .line 507
    :cond_0
    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/framework/app/HtcDndCommandService;->setEventOnAlarm(ZJ)V

    goto :goto_0

    .line 514
    :cond_1
    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/framework/app/HtcDndCommandService;->setEventOffAlarm(ZJ)V

    goto :goto_1
.end method

.method private setEventOffAlarm(ZJ)V
    .locals 6
    .parameter "bEnable"
    .parameter "time"

    .prologue
    const/4 v5, 0x0

    .line 606
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcDndCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 608
    .local v0, alarmManager:Landroid/app/AlarmManager;
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->mPendingIntentEventOff:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 609
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.settings.action.dnd_AUTO_EVENT_OFF"

    const/4 v3, 0x0

    const-class v4, Lcom/android/settings/framework/app/HtcDndCommandReceiver;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->mPendingIntentEventOff:Landroid/app/PendingIntent;

    .line 614
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz p1, :cond_1

    .line 615
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->mPendingIntentEventOff:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_1
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->mPendingIntentEventOff:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setEventOnAlarm(ZJ)V
    .locals 6
    .parameter "bEnable"
    .parameter "startTime"

    .prologue
    const/4 v5, 0x0

    .line 589
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcDndCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 591
    .local v0, alarmManager:Landroid/app/AlarmManager;
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->mPendingIntentEventOn:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.settings.action.dnd_AUTO_EVENT_ON"

    const/4 v3, 0x0

    const-class v4, Lcom/android/settings/framework/app/HtcDndCommandReceiver;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->mPendingIntentEventOn:Landroid/app/PendingIntent;

    .line 597
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz p1, :cond_1

    .line 598
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->mPendingIntentEventOn:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_1
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->mPendingIntentEventOn:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setSilentMode()V
    .locals 5

    .prologue
    .line 923
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcDndCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 924
    .local v0, mgr:Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 925
    sget-boolean v2, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 926
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v3, "setSilentMode, audio manager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 932
    .local v1, orgRingerMode:I
    sget-boolean v2, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 933
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSilentMode, orgRingerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_2
    if-nez v1, :cond_3

    .line 939
    sget-boolean v2, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 940
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v3, "setSilentMode, already silent, ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_dnd_original_ringer_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_dnd_ringer_mode_changed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 963
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private showDisableActiveEventToast()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcDndCommandService;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcDndCommandService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcDndCommandService;->mUiHandler:Landroid/os/Handler;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcDndCommandService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/app/HtcDndCommandService$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcDndCommandService$1;-><init>(Lcom/android/settings/framework/app/HtcDndCommandService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    return-void
.end method

.method private updateCurrentDndStatus(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;ZI)V
    .locals 7
    .parameter "slotData"
    .parameter "dndEnabled"
    .parameter "mode"

    .prologue
    const/4 v6, 0x1

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, bChanged:Z
    move v1, p2

    .line 528
    .local v1, bResultEnabled:Z
    iget-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    if-nez v2, :cond_2

    .line 530
    if-ne p2, v6, :cond_0

    if-eqz p3, :cond_0

    .line 531
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOffDndFeature(Landroid/content/Context;)V

    .line 532
    const/4 v0, 0x1

    .line 533
    const/4 v1, 0x0

    .line 534
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOffExtraAction()V

    .line 576
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 577
    if-ne v1, v6, :cond_7

    .line 578
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->updateNotification()V

    .line 583
    :cond_1
    :goto_1
    return-void

    .line 539
    :cond_2
    if-nez p2, :cond_3

    .line 541
    iget-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMode()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getAllowedType()I

    move-result v3

    iget-wide v4, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mUntilMillis:J

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOnDndFeature(Landroid/content/Context;IIJ)V

    .line 544
    const/4 v0, 0x1

    .line 545
    const/4 v1, 0x1

    .line 546
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOnExtraAction()V

    goto :goto_0

    .line 549
    :cond_3
    if-eqz p3, :cond_4

    .line 550
    iget-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMode()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getAllowedType()I

    move-result v3

    iget-wide v4, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mUntilMillis:J

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOnDndFeature(Landroid/content/Context;IIJ)V

    .line 554
    const/4 v0, 0x1

    .line 555
    const/4 v1, 0x1

    goto :goto_0

    .line 563
    :cond_4
    iget-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v2, v6}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->checkPriority(I)I

    move-result v2

    if-lez v2, :cond_6

    .line 564
    sget-boolean v2, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 565
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentDndStatus, update allowed type to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getAllowedType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_5
    iget-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getAllowedType()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->setAllowedType(Landroid/content/Context;I)V

    goto :goto_0

    .line 570
    :cond_6
    invoke-static {p0, v6}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->setAllowedType(Landroid/content/Context;I)V

    goto :goto_0

    .line 580
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelNotification()V

    goto :goto_1
.end method

.method private updateNotification()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 623
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 624
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getCurrentDndMode(Landroid/content/Context;)I

    move-result v2

    .line 626
    .local v2, mode:I
    const/4 v0, 0x0

    .line 627
    .local v0, bTimerEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_dnd_off_by_timer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 629
    .local v1, minutes:I
    if-eq v1, v5, :cond_0

    .line 630
    const/4 v0, 0x1

    .line 634
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/settings/framework/app/HtcDndCommandService;->addNotification(IZ)V

    .line 637
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 638
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->addTimer()V

    .line 646
    .end local v0           #bTimerEnabled:Z
    .end local v1           #minutes:I
    .end local v2           #mode:I
    :goto_0
    return-void

    .line 640
    .restart local v0       #bTimerEnabled:Z
    .restart local v1       #minutes:I
    .restart local v2       #mode:I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelTimer()V

    goto :goto_0

    .line 643
    .end local v0           #bTimerEnabled:Z
    .end local v1           #minutes:I
    .end local v2           #mode:I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelNotification()V

    .line 644
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->cancelTimer()V

    goto :goto_0
.end method

.method private updateRingerMode(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 881
    if-nez p1, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    const-string v2, "intent_key_update_ringer_mode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 886
    .local v0, bUpdateMode:Z
    if-eqz v0, :cond_0

    .line 890
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 891
    .local v1, dndEnabled:Z
    sget-boolean v2, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 892
    sget-object v2, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRingerMode, dndEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_2
    if-eqz v1, :cond_3

    .line 896
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOnExtraAction()V

    goto :goto_0

    .line 898
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOffExtraAction()V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 87
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportDoNotDisturbFeature()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    if-nez p1, :cond_2

    .line 92
    sget-boolean v1, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v2, "onHandleIntent, intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 100
    sget-boolean v1, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    const-string v2, "onHandleIntent, action is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_3
    sget-boolean v1, Lcom/android/settings/framework/app/HtcDndCommandService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 107
    sget-object v1, Lcom/android/settings/framework/app/HtcDndCommandService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_4
    iput-object p0, p0, Lcom/android/settings/framework/app/HtcDndCommandService;->mContext:Landroid/content/Context;

    .line 112
    const-string v1, "com.htc.settings.action.dnd.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->updateNotification()V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/settings/framework/app/HtcDndCommandService;->updateRingerMode(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_5
    const-string v1, "com.htc.settings.action.dnd.USER_CANCEL_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOffByUserCancel()V

    goto :goto_0

    .line 117
    :cond_6
    const-string v1, "com.htc.settings.action.dnd.AUTO_TIME_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performTurnOffByAutoTimer()V

    goto :goto_0

    .line 119
    :cond_7
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    goto :goto_0

    .line 121
    :cond_8
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 122
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->updateNotification()V

    goto :goto_0

    .line 123
    :cond_9
    const-string v1, "com.htc.settings.action.dnd.QS_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 124
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performQuickSettingsUpdate()V

    goto/16 :goto_0

    .line 125
    :cond_a
    const-string v1, "com.htc.settings.action.dnd_RESCHEDULE_EVENT_TIMER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 126
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    goto/16 :goto_0

    .line 127
    :cond_b
    const-string v1, "com.htc.settings.action.dnd_AUTO_EVENT_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 128
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    goto/16 :goto_0

    .line 129
    :cond_c
    const-string v1, "com.htc.settings.action.dnd_AUTO_EVENT_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 130
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    goto/16 :goto_0

    .line 131
    :cond_d
    const-string v1, "com.htc.settings.action.dnd_disable_running_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 132
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->performDisableRunningEvent()V

    goto/16 :goto_0

    .line 133
    :cond_e
    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 134
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    goto/16 :goto_0

    .line 135
    :cond_f
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 136
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    goto/16 :goto_0

    .line 137
    :cond_10
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcDndCommandService;->rescheduleEventTimer()V

    goto/16 :goto_0
.end method
