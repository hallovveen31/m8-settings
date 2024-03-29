.class public Lcom/android/settings/framework/core/sound/HtcDndUtils;
.super Ljava/lang/Object;
.source "HtcDndUtils.java"


# static fields
.field public static final ALLOWED_ALL_CONTACTS:I = 0x2

.field public static final ALLOWED_EXCEPTIONS:I = 0x1

.field public static final ALLOWED_NONE:I = 0x0

.field public static final DBKEY_DND_AUTO_OFF_UNTIL_MILLIS:Ljava/lang/String; = "htc_dnd_auto_off_until_millis"

.field public static final DBKEY_DND_CONTACTS_ALLOWED:Ljava/lang/String; = "htc_dnd_contacts_allowed"

.field public static final DBKEY_DND_FEATURE_MODE:Ljava/lang/String; = "htc_dnd_feature_mode"

.field public static final DBKEY_DND_OFF_BY_TIMER:Ljava/lang/String; = "htc_dnd_off_by_timer"

.field public static final DBKEY_DND_ORIGINAL_RINGER_MODE:Ljava/lang/String; = "htc_dnd_original_ringer_mode"

.field public static final DBKEY_DND_RINGER_MODE_CHANGED:Ljava/lang/String; = "htc_dnd_ringer_mode_changed"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DEFAULT_ALLOWED_TYPE:I = 0x1

.field public static final DEFAULT_DND_EVENT_DAYS:I = 0x1e

.field public static final DND_EVENT_DELETE_URI:Ljava/lang/String; = "content://com.android.calendar/dnd_events"

.field public static final DND_EVENT_WHENBYDAY_URI:Ljava/lang/String; = "content://com.android.calendar/dnd_events/whenbyday"

.field public static final DND_MODE_CALENDAR_EVENT:I = 0x2

.field public static final DND_MODE_GLOBAL:I = 0x0

.field public static final DND_MODE_SCHEDULING:I = 0x1

.field public static final INSTANCES_INDEX_ACCOUNT_NAME:I = 0xc

.field public static final INSTANCES_INDEX_ACCOUNT_TYPE:I = 0xb

.field public static final INSTANCES_INDEX_ALL_DAY:I = 0x2

.field public static final INSTANCES_INDEX_BEGIN:I = 0x3

.field public static final INSTANCES_INDEX_CALENDAR_COLOR:I = 0x9

.field public static final INSTANCES_INDEX_END:I = 0x4

.field public static final INSTANCES_INDEX_END_DAY:I = 0x7

.field public static final INSTANCES_INDEX_END_MINUTE:I = 0x8

.field public static final INSTANCES_INDEX_EVENT_ID:I = 0x0

.field public static final INSTANCES_INDEX_RRULE:I = 0xa

.field public static final INSTANCES_INDEX_START_DAY:I = 0x5

.field public static final INSTANCES_INDEX_START_MINUTE:I = 0x6

.field public static final INSTANCES_INDEX_TITLE:I = 0x1

.field private static final INSTANCES_PROJECTION:[Ljava/lang/String; = null

.field public static final MAX_SCHEDULING_ITEM_COUNT:I = 0xa

.field public static final ONE_DAY_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/sound/HtcDndUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/sound/HtcDndUtils;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/sound/HtcDndUtils;->DEBUG:Z

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/sound/HtcDndUtils;->INSTANCES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustEndMillis(Landroid/text/format/Time;IJI)J
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    invoke-virtual {p0, p4}, Landroid/text/format/Time;->setJulianDay(I)J

    const/16 v0, 0x17

    iput v0, p0, Landroid/text/format/Time;->hour:I

    const/16 v0, 0x3b

    iput v0, p0, Landroid/text/format/Time;->minute:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p2

    :goto_0
    return-wide p2

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method public static adjustEndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static adjustStartMillis(Landroid/text/format/Time;IJI)J
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    invoke-virtual {p0, p4}, Landroid/text/format/Time;->setJulianDay(I)J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p2

    :goto_0
    return-wide p2

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method private static clearAutoOffUntilMillis(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_auto_off_until_millis"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private static clearContactsAllowed(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_contacts_allowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static getCalendarEvent(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 12

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    new-instance v8, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    int-to-long v10, v0

    add-long v6, v10, p1

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "content://com.android.calendar/dnd_events/whenbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/framework/core/sound/HtcDndUtils;->INSTANCES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAllowedType(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_contacts_allowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentDndMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_feature_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUntilMillis(Landroid/content/Context;)J
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_auto_off_until_millis"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUntilMillisInText(Landroid/content/Context;)Ljava/lang/String;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "htc_dnd_auto_off_until_millis"

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gtz v12, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-ne v1, v7, :cond_2

    if-ne v2, v10, :cond_2

    if-eq v3, v11, :cond_0

    :cond_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v12, "(MM/dd)"

    invoke-direct {v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static isDndFeatureEnabled(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_dnd_feature_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v3, Lcom/android/settings/framework/core/sound/HtcDndUtils;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/core/sound/HtcDndUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDndFeatureEnabled, value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static rescheduleEventTimer(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.settings.action.dnd_RESCHEDULE_EVENT_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static setAllowedType(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_contacts_allowed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static turnOffDndFeature(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->clearAutoOffUntilMillis(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->clearContactsAllowed(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static turnOnDndFeature(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOnDndFeature(Landroid/content/Context;IIJ)V

    return-void
.end method

.method public static turnOnDndFeature(Landroid/content/Context;IIJ)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_contacts_allowed"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_auto_off_until_millis"

    invoke-static {v1, v2, p3, p4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_feature_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->clearContactsAllowed(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->clearAutoOffUntilMillis(Landroid/content/Context;)V

    goto :goto_0
.end method
