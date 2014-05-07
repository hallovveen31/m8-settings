.class public Lcom/android/settings/framework/core/storage/HtcMemInfoReader;
.super Ljava/lang/Object;
.source "HtcMemInfoReader.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcDesignPattern;
    value = {
        .enum Lcom/android/settings/framework/os/annotation/HtcDesignPattern$Pattern;->DECORATOR:Lcom/android/settings/framework/os/annotation/HtcDesignPattern$Pattern;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sHardwareTotalSize:J


# instance fields
.field private final mMemInfoReader:Lcom/android/internal/util/MemInfoReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->DEBUG:Z

    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->sHardwareTotalSize:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    return-void
.end method

.method private getHardwareTotalSize()J
    .locals 13

    .prologue
    .line 105
    sget-wide v9, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->sHardwareTotalSize:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 106
    sget-wide v0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->sHardwareTotalSize:J

    .line 140
    :goto_0
    return-wide v0

    .line 109
    :cond_0
    iget-object v9, p0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    .line 110
    .local v0, DEFAULT_RAM:J
    const-string v9, "ro.product.ram"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, RAM:Ljava/lang/String;
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v5

    .line 118
    .local v5, parser:Ljava/text/NumberFormat;
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 121
    .local v8, value:F
    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->parseUnit(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 128
    .local v6, unit:J
    sget-boolean v9, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v3, builder:Ljava/lang/StringBuilder;
    const-string v9, "getHardwareTotalSize()"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n - DEFAULT_RAM: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x14

    shr-long v11, v0, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(MB)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n - RAM: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n - value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n - unit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v9, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v3           #builder:Ljava/lang/StringBuilder;
    :cond_1
    long-to-float v9, v6

    mul-float/2addr v9, v8

    float-to-long v0, v9

    sput-wide v0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->sHardwareTotalSize:J

    goto/16 :goto_0

    .line 122
    .end local v6           #unit:J
    .end local v8           #value:F
    :catch_0
    move-exception v4

    .line 123
    .local v4, e:Ljava/text/ParseException;
    sget-object v9, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parse the system property failed!\n - RAM: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    sput-wide v0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->sHardwareTotalSize:J

    goto/16 :goto_0
.end method

.method private static parseUnit(Ljava/lang/String;)J
    .locals 11
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[^a-zA-Z]*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "([a-zA-Z])?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\s*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\.?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\s*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[a-zA-Z]?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\s*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\.?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\s*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, pattern:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 156
    .local v2, parser:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 158
    .local v1, matcher:Ljava/util/regex/Matcher;
    const-string v7, "B"

    .line 159
    .local v7, unitChar:Ljava/lang/String;
    const-wide/16 v5, 0x1

    .line 164
    .local v5, unit:J
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    .line 166
    .local v4, successful:Z
    if-eqz v4, :cond_2

    .line 167
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 168
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 171
    if-eqz v7, :cond_0

    .line 172
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 194
    new-instance v8, Ljava/text/ParseException;

    const-string v9, "Unknow unit"

    invoke-direct {v8, v9, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 175
    :sswitch_0
    const-wide v5, 0x10000000000L

    .line 202
    :cond_0
    :goto_0
    sget-boolean v8, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v8, "parseUnit(..)"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n - size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n - successful: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n - groupCount(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n - unit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    sget-object v8, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_1
    return-wide v5

    .line 179
    :sswitch_1
    const-wide/32 v5, 0x40000000

    .line 180
    goto :goto_0

    .line 183
    :sswitch_2
    const-wide/32 v5, 0x100000

    .line 184
    goto :goto_0

    .line 187
    :sswitch_3
    const-wide/16 v5, 0x400

    .line 188
    goto :goto_0

    .line 191
    :sswitch_4
    const-wide/16 v5, 0x1

    .line 192
    goto :goto_0

    .line 199
    :cond_2
    new-instance v8, Ljava/text/ParseException;

    const-string v9, "Unknow pattern"

    invoke-direct {v8, v9, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x47 -> :sswitch_1
        0x4b -> :sswitch_3
        0x4d -> :sswitch_2
        0x54 -> :sswitch_0
        0x62 -> :sswitch_4
        0x67 -> :sswitch_1
        0x6b -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCachedSize()J
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getHardwareTotalSize()J

    move-result-wide v0

    .line 71
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public readMemInfo()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 225
    return-void
.end method
