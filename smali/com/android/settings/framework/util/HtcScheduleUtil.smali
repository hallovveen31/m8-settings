.class public Lcom/android/settings/framework/util/HtcScheduleUtil;
.super Ljava/lang/Object;
.source "HtcScheduleUtil.java"


# static fields
.field public static final DAY_TIME_MILLIS:J = 0x5265c00L

.field private static final SEPARATE_CHAR:Ljava/lang/String; = ", "

.field private static final VALUE_FRI:Ljava/lang/String; = "FRI"

.field private static final VALUE_MON:Ljava/lang/String; = "MON"

.field private static final VALUE_SAT:Ljava/lang/String; = "SAT"

.field private static final VALUE_SUN:Ljava/lang/String; = "SUN"

.field private static final VALUE_THU:Ljava/lang/String; = "THU"

.field private static final VALUE_TUE:Ljava/lang/String; = "TUE"

.field private static final VALUE_WED:Ljava/lang/String; = "WED"

.field public static final WEEK_MASK_FRI:I = 0x100000

.field public static final WEEK_MASK_MON:I = 0x10

.field public static final WEEK_MASK_SAT:I = 0x1000000

.field public static final WEEK_MASK_SUN:I = 0x1

.field public static final WEEK_MASK_THU:I = 0x10000

.field public static final WEEK_MASK_TUE:I = 0x100

.field public static final WEEK_MASK_WED:I = 0x1000

.field private static final mDayOfWeekEntries:[I

.field private static final mDayOfWeekEntryValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MON"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TUE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "WED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "THU"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FRI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SAT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntryValues:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 0x4
        0xc7t 0x6t 0xct 0x7ft
        0xc8t 0x6t 0xct 0x7ft
        0xc9t 0x6t 0xct 0x7ft
        0xcat 0x6t 0xct 0x7ft
        0xcbt 0x6t 0xct 0x7ft
        0xcct 0x6t 0xct 0x7ft
        0xcdt 0x6t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineDayOfWeekEntryValues(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "SUN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "MON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_5
    const-string v3, "TUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x100

    goto :goto_0

    :cond_6
    const-string v3, "WED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    or-int/lit16 v1, v1, 0x1000

    goto :goto_0

    :cond_7
    const-string v3, "THU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x1

    or-int/2addr v1, v3

    goto :goto_0

    :cond_8
    const-string v3, "FRI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, 0x10

    or-int/2addr v1, v3

    goto :goto_0

    :cond_9
    const-string v3, "SAT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x100

    or-int/2addr v1, v3

    goto :goto_0
.end method

.method public static getDayOfWeekDisplayText(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x7

    if-nez p2, :cond_0

    const v2, 0x204027e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    and-int/lit8 v2, p2, 0x1

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v2, p2, 0x10

    if-lez v2, :cond_3

    if-lez v1, :cond_2

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit16 v2, p2, 0x100

    if-lez v2, :cond_5

    if-lez v1, :cond_4

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v2, p2, 0x1000

    if-lez v2, :cond_7

    if-lez v1, :cond_6

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/high16 v2, 0x1

    and-int/2addr v2, p2

    if-lez v2, :cond_9

    if-lez v1, :cond_8

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/high16 v2, 0x10

    and-int/2addr v2, p2

    if-lez v2, :cond_b

    if-lez v1, :cond_a

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const/high16 v2, 0x100

    and-int/2addr v2, p2

    if-lez v2, :cond_d

    if-lez v1, :cond_c

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v3}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static getDayOfWeekEntries(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/util/res/HtcResUtil;->toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/util/res/HtcResUtil;->toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/util/res/HtcResUtil;->toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/util/res/HtcResUtil;->toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/util/res/HtcResUtil;->toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/util/res/HtcResUtil;->toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/util/res/HtcResUtil;->toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public static getDayOfWeekEntryValues()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public static isBelongToRepeatDay(Ljava/util/Calendar;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const/high16 v1, 0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/high16 v1, 0x10

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/high16 v1, 0x100

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

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
    .end packed-switch
.end method

.method public static separateDayOfWeekEntryValues(I)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    const-string v1, "SUN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_1

    const-string v1, "MON"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit16 v1, p0, 0x100

    if-lez v1, :cond_2

    const-string v1, "TUE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit16 v1, p0, 0x1000

    if-lez v1, :cond_3

    const-string v1, "WED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    const/high16 v1, 0x1

    and-int/2addr v1, p0

    if-lez v1, :cond_4

    const-string v1, "THU"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    const/high16 v1, 0x10

    and-int/2addr v1, p0

    if-lez v1, :cond_5

    const-string v1, "FRI"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    const/high16 v1, 0x100

    and-int/2addr v1, p0

    if-lez v1, :cond_6

    const-string v1, "SAT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method
