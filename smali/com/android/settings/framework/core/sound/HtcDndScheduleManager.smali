.class public Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;
.super Ljava/lang/Object;
.source "HtcDndScheduleManager.java"


# static fields
.field private static final DATA_COLUMN_COUNT:I = 0x8

.field private static final DBKEY_DND_SCHEDULE_DATA:Ljava/lang/String; = "htc_dnd_schedule_data"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FIELD_SEPARATOR:Ljava/lang/String; = ":"

.field private static final INDEX_ALLOWED_CONTACTS:I = 0x6

.field private static final INDEX_ENABLED:I = 0x7

.field private static final INDEX_END_HOUR:I = 0x3

.field private static final INDEX_END_MINUTE:I = 0x4

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_REPEAT:I = 0x5

.field private static final INDEX_START_HOUR:I = 0x1

.field private static final INDEX_START_MINUTE:I = 0x2

.field private static final RECORD_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private convertToRecord(Ljava/lang/String;)Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;
    .locals 9

    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    const-string v7, ":"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    if-eq v7, v8, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-direct {v3}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setId(I)V

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setStartHour(I)V

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setStartMinute(I)V

    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEndHour(I)V

    const/4 v7, 0x4

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEndMinute(I)V

    const/4 v7, 0x5

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setRepeat(I)V

    const/4 v7, 0x6

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setAllowedContacts(I)V

    const/4 v7, 0x7

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_4

    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->DEBUG:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertToRecord, value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v3, v4

    goto/16 :goto_0

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method private prepareValue(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getAllowedContacts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private syncRecord(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartHour()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setStartHour(I)V

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartMinute()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setStartMinute(I)V

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndHour()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEndHour(I)V

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndMinute()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEndMinute(I)V

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setRepeat(I)V

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getAllowedContacts()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setAllowedContacts(I)V

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    return-void
.end method

.method private writeToDatabase(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    if-eqz v3, :cond_1

    if-lez v0, :cond_2

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->prepareValue(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_dnd_schedule_data"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public addRecord(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)Z
    .locals 7

    const/4 v5, 0x1

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecords()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->writeToDatabase(Ljava/util/ArrayList;)V

    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v6

    if-ne v4, v6, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-direct {p0, p1, v4}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->syncRecord(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)V

    :cond_3
    if-ne v0, v5, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public disableCurrentEvent(J)I
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecords()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x0

    const/16 v15, 0xb

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartHour()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xc

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartMinute()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xb

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndHour()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xc

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndMinute()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/Calendar;->set(II)V

    invoke-static {v14, v4}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustEndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v15, v15, p1

    if-gtz v15, :cond_2

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v15, p1, v15

    if-gtz v15, :cond_2

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->isEnabled()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    :cond_2
    :goto_2
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->isEnabled()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v15, v15, p1

    if-gtz v15, :cond_4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v15, p1, v15

    if-gtz v15, :cond_4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    const-wide/32 v17, 0x5265c00

    sub-long v15, v15, v17

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v15

    invoke-static {v4, v15}, Lcom/android/settings/framework/util/HtcScheduleUtil;->isBelongToRepeatDay(Ljava/util/Calendar;I)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->isEnabled()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/settings/framework/util/HtcScheduleUtil;->isBelongToRepeatDay(Ljava/util/Calendar;I)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->isEnabled()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    const-wide/32 v17, 0x5265c00

    sub-long v10, v15, v17

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    const-wide/32 v17, 0x5265c00

    sub-long v8, v15, v17

    cmp-long v15, v10, p1

    if-gez v15, :cond_1

    cmp-long v15, p1, v8

    if-gez v15, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v13}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v15

    invoke-static {v12, v15}, Lcom/android/settings/framework/util/HtcScheduleUtil;->isBelongToRepeatDay(Ljava/util/Calendar;I)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->writeToDatabase(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public getRecordById(I)Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecords()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_0
.end method

.method public getRecords()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "htc_dnd_schedule_data"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-direct {p0, v6}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->convertToRecord(Ljava/lang/String;)Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeRecordById(I)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecords()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v4

    if-ne v4, p1, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_2
    if-ne v0, v5, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->writeToDatabase(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
