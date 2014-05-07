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

    .prologue
    const/4 v1, 0x7

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntries:[I

    .line 58
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

    .line 48
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

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineDayOfWeekEntryValues(Ljava/util/Set;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 167
    :cond_1
    return v1

    .line 146
    :cond_2
    const/4 v1, 0x0

    .line 147
    .local v1, result:I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    .local v2, tmpValue:Ljava/lang/String;
    const-string v3, "SUN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_4
    const-string v3, "MON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 153
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 154
    :cond_5
    const-string v3, "TUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    or-int/lit16 v1, v1, 0x100

    goto :goto_0

    .line 156
    :cond_6
    const-string v3, "WED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 157
    or-int/lit16 v1, v1, 0x1000

    goto :goto_0

    .line 158
    :cond_7
    const-string v3, "THU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 159
    const/high16 v3, 0x1

    or-int/2addr v1, v3

    goto :goto_0

    .line 160
    :cond_8
    const-string v3, "FRI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 161
    const/high16 v3, 0x10

    or-int/2addr v1, v3

    goto :goto_0

    .line 162
    :cond_9
    const-string v3, "SAT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    const/high16 v3, 0x100

    or-int/2addr v1, v3

    goto :goto_0
.end method

.method public static getDayOfWeekDisplayText(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "builder"
    .parameter "combinedValue"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x7

    .line 179
    if-nez p2, :cond_0

    .line 180
    const v2, 0x204027e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    :goto_0
    return-object v2

    .line 183
    :cond_0
    const/4 v1, 0x0

    .line 184
    .local v1, count:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 188
    and-int/lit8 v2, p2, 0x1

    if-lez v2, :cond_1

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    and-int/lit8 v2, p2, 0x10

    if-lez v2, :cond_3

    .line 197
    if-lez v1, :cond_2

    .line 198
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 202
    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_3
    and-int/lit16 v2, p2, 0x100

    if-lez v2, :cond_5

    .line 209
    if-lez v1, :cond_4

    .line 210
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 214
    const/4 v2, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 215
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_5
    and-int/lit16 v2, p2, 0x1000

    if-lez v2, :cond_7

    .line 221
    if-lez v1, :cond_6

    .line 222
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 226
    const/4 v2, 0x4

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 227
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_7
    const/high16 v2, 0x1

    and-int/2addr v2, p2

    if-lez v2, :cond_9

    .line 233
    if-lez v1, :cond_8

    .line 234
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 238
    const/4 v2, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_9
    const/high16 v2, 0x10

    and-int/2addr v2, p2

    if-lez v2, :cond_b

    .line 245
    if-lez v1, :cond_a

    .line 246
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 250
    const/4 v2, 0x6

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 251
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_b
    const/high16 v2, 0x100

    and-int/2addr v2, p2

    if-lez v2, :cond_d

    .line 257
    if-lez v1, :cond_c

    .line 258
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 262
    invoke-virtual {v0, v3, v3}, Ljava/util/Calendar;->set(II)V

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_d
    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 270
    :cond_e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static getDayOfWeekEntries(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
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

    .line 80
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

    .prologue
    .line 93
    sget-object v0, Lcom/android/settings/framework/util/HtcScheduleUtil;->mDayOfWeekEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public static isBelongToRepeatDay(Ljava/util/Calendar;I)Z
    .locals 2
    .parameter "calendar"
    .parameter "repeatDay"

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, bValue:Z
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return v0

    .line 283
    :pswitch_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :pswitch_1
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 290
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :pswitch_2
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_0

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :pswitch_3
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_0

    .line 302
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :pswitch_4
    const/high16 v1, 0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :pswitch_5
    const/high16 v1, 0x10

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 314
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    :pswitch_6
    const/high16 v1, 0x100

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 320
    const/4 v0, 0x1

    goto :goto_0

    .line 281
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
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v0, values:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    .line 104
    const-string v1, "SUN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_1

    .line 108
    const-string v1, "MON"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    and-int/lit16 v1, p0, 0x100

    if-lez v1, :cond_2

    .line 112
    const-string v1, "TUE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_2
    and-int/lit16 v1, p0, 0x1000

    if-lez v1, :cond_3

    .line 116
    const-string v1, "WED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    const/high16 v1, 0x1

    and-int/2addr v1, p0

    if-lez v1, :cond_4

    .line 120
    const-string v1, "THU"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_4
    const/high16 v1, 0x10

    and-int/2addr v1, p0

    if-lez v1, :cond_5

    .line 124
    const-string v1, "FRI"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_5
    const/high16 v1, 0x100

    and-int/2addr v1, p0

    if-lez v1, :cond_6

    .line 128
    const-string v1, "SAT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_6
    return-object v0
.end method
