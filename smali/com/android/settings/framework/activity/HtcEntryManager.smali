.class public Lcom/android/settings/framework/activity/HtcEntryManager;
.super Ljava/lang/Object;
.source "HtcEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;
    }
.end annotation


# static fields
.field private static final CONTEXT:Landroid/content/Context;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mResource:Landroid/content/res/Resources;

.field private static sListener:Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;


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

    const-class v1, Lcom/android/settings/framework/activity/HtcEntryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcEntryManager;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/HtcEntryManager;->DEBUG:Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/activity/HtcEntryManager;->sListener:Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;

    .line 66
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcEntryManager;->CONTEXT:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->startManager()V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/settings/framework/activity/HtcEntryManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/settings/framework/activity/HtcEntryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Lcom/android/settings/framework/activity/HtcEntryManager;->mResource:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/settings/framework/activity/HtcEntryManager;->CONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/settings/framework/activity/HtcEntryManager;->onRefresh(Landroid/content/Context;)V

    return-void
.end method

.method static getEntryProvider()Lcom/android/settings/framework/activity/HtcIEntryProvider;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/settings/framework/activity/VzwEntryProvider;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/VzwEntryProvider;-><init>()V

    .line 118
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;-><init>()V

    goto :goto_0
.end method

.method public static getFullWrapHeaders()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getFullEntryList()Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    move-result-object v0

    .line 141
    .local v0, wrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/activity/HtcEntryManager;->performFilterAndCopy(Lcom/android/settings/framework/activity/HtcWrapHeaderList;II)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getPartialWrapHeaders()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getPartialWrapHeaders()Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    move-result-object v1

    .line 128
    .local v1, wrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    invoke-virtual {v1}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->size()I

    move-result v0

    .line 129
    .local v0, partialSize:I
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/activity/HtcEntryManager;->performFilterAndCopy(Lcom/android/settings/framework/activity/HtcWrapHeaderList;II)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 337
    sget-object v0, Lcom/android/settings/framework/activity/HtcEntryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method private static declared-synchronized onRefresh(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 298
    const-class v2, Lcom/android/settings/framework/activity/HtcEntryManager;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/android/settings/framework/activity/HtcEntryManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 299
    const-string v1, ">> refresh()"

    invoke-static {v1}, Lcom/android/settings/framework/activity/HtcEntryManager;->log(Ljava/lang/String;)V

    .line 303
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->getFullEntryList()Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    move-result-object v0

    .line 307
    .local v0, wrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    invoke-static {p0, v0}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->pluginExtraHeaders(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V

    .line 310
    invoke-static {p0, v0}, Lcom/android/settings/framework/activity/HtcEntryManager;->updateHeaderList(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V

    .line 313
    invoke-virtual {v0}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->sortByOrder()V

    .line 317
    sget-object v1, Lcom/android/settings/framework/activity/HtcEntryManager;->sListener:Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;

    if-eqz v1, :cond_2

    .line 318
    sget-boolean v1, Lcom/android/settings/framework/activity/HtcEntryManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 319
    const-string v1, "set EntryChangedListener"

    invoke-static {v1}, Lcom/android/settings/framework/activity/HtcEntryManager;->log(Ljava/lang/String;)V

    .line 321
    :cond_1
    sget-object v1, Lcom/android/settings/framework/activity/HtcEntryManager;->sListener:Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->size()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/settings/framework/activity/HtcEntryManager;->performFilterAndCopy(Lcom/android/settings/framework/activity/HtcWrapHeaderList;II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;->onEntriesFinished(Ljava/util/ArrayList;)V

    .line 325
    :cond_2
    sget-boolean v1, Lcom/android/settings/framework/activity/HtcEntryManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 326
    const-string v1, "<< refresh()"

    invoke-static {v1}, Lcom/android/settings/framework/activity/HtcEntryManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_3
    monitor-exit v2

    return-void

    .line 298
    .end local v0           #wrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static performFilterAndCopy(Lcom/android/settings/framework/activity/HtcWrapHeaderList;II)Ljava/util/ArrayList;
    .locals 6
    .parameter "outWrapHeader"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/framework/activity/HtcWrapHeaderList;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->toArray()[Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v4

    .line 163
    .local v4, wrapHeaderArray:[Lcom/android/settings/framework/activity/HtcWrapHeader;
    array-length v5, v4

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 165
    sub-int v0, p2, p1

    .line 166
    .local v0, SIZE:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v2, newWrapHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/HtcWrapHeader;>;"
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 172
    aget-object v3, v4, v1

    .line 173
    .local v3, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-boolean v5, v3, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    if-eqz v5, :cond_0

    .line 171
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    .end local v3           #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    :cond_1
    return-object v2
.end method

.method public static refresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 281
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/activity/HtcEntryManager$2;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/HtcEntryManager$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 287
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 288
    return-void
.end method

.method public static setEntryChangedListener(Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    sput-object p0, Lcom/android/settings/framework/activity/HtcEntryManager;->sListener:Lcom/android/settings/framework/activity/HtcEntryManager$EntryChangedListener;

    .line 112
    return-void
.end method

.method private static startManager()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/activity/HtcEntryManager$1;

    invoke-direct {v1}, Lcom/android/settings/framework/activity/HtcEntryManager$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method

.method private static updateHeaderList(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V
    .locals 8
    .parameter "context"
    .parameter "outWrapHeaders"

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->size()I

    move-result v0

    .line 200
    .local v0, SIZE:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1c

    .line 201
    invoke-virtual {p1, v1}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->get(I)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v3

    .line 202
    .local v3, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-object v4, v3, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v4, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 204
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090303

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f09031c

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 206
    :cond_0
    invoke-static {p0, v3, p1}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateOperator(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V

    .line 200
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f0902fa

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 208
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateWifi(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 209
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f0902fe

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 210
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateBluetooth(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 211
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090300

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 212
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateMobileNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 213
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090306

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 214
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updatePersonalize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 215
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090318

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 216
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateCall(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 217
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f0902fd

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 218
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateInfrared(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 219
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090304

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 220
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateDualNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 221
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f09031b

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 222
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateAppAssociation(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 223
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090311

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 224
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateDisplay(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 225
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090319

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 226
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateCharm(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 227
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090313

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    .line 228
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateBeatsAudio(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 231
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090315

    cmp-long v4, v4, v6

    if-nez v4, :cond_e

    .line 232
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateUmc(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 233
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090316

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    .line 234
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateBoomSound(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 238
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090317

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    .line 239
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateHarman(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 242
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f09030a

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    .line 243
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateBackupAssistantPlus(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 244
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090302

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    .line 245
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateMediaLink(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 246
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090325

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    .line 247
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateActivateDevice(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 248
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f09030f

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    .line 249
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateBackupAndReset(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 250
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090310

    cmp-long v4, v4, v6

    if-nez v4, :cond_15

    .line 251
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateTransferMyStuff(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 252
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090308

    cmp-long v4, v4, v6

    if-nez v4, :cond_16

    .line 253
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateUser(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 254
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090312

    cmp-long v4, v4, v6

    if-nez v4, :cond_17

    .line 255
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateFingerprint(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 256
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090324

    cmp-long v4, v4, v6

    if-nez v4, :cond_18

    .line 257
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateDevelopment(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 258
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090307

    cmp-long v4, v4, v6

    if-nez v4, :cond_19

    .line 259
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateSkyfireToolbar(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 260
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f0902ff

    cmp-long v4, v4, v6

    if-nez v4, :cond_1a

    .line 261
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateHtcMini(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 262
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f0902fb

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b

    .line 263
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updateVoWifi(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 264
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7f090323

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 265
    invoke-static {p0, v3}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->updatePrinting(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 273
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    :cond_1c
    return-void
.end method
