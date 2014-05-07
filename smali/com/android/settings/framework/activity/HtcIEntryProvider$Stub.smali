.class public abstract Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;
.super Ljava/lang/Object;
.source "HtcIEntryProvider.java"

# interfaces
.implements Lcom/android/settings/framework/activity/HtcIEntryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/HtcIEntryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# static fields
.field protected static final CONTEXT:Landroid/content/Context;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static volatile areFullEntriesReady:Z

.field private static mResource:Landroid/content/res/Resources;

.field private static final sInstance:Lcom/android/settings/framework/activity/HtcIEntryProvider;

.field private static final sWrapHeaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->DEBUG:Z

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->areFullEntriesReady:Z

    .line 77
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->CONTEXT:Landroid/content/Context;

    .line 78
    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->getEntryProvider()Lcom/android/settings/framework/activity/HtcIEntryProvider;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sInstance:Lcom/android/settings/framework/activity/HtcIEntryProvider;

    .line 79
    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;-><init>(I)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    .line 82
    invoke-static {}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->startProvider()V

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->mResource:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/settings/framework/activity/HtcIEntryProvider;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sInstance:Lcom/android/settings/framework/activity/HtcIEntryProvider;

    return-object v0
.end method

.method public static addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z
    .locals 1
    .parameter "entry"
    .parameter "order"
    .parameter "outWrapHeaderList"

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    move-result v0

    return v0
.end method

.method public static addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z
    .locals 6
    .parameter "entry"
    .parameter "order"
    .parameter "outWrapHeaderList"
    .parameter "isHidden"

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 171
    .local v0, key:Ljava/lang/Long;
    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 173
    .local v1, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    if-eqz v1, :cond_3

    .line 174
    move-object p0, v1

    .line 175
    sget-boolean v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This wrapHeader has existed. id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->log(Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add wrapHeader, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->log(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    if-lez v2, :cond_1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add wrapHeader, title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v4, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->log(Ljava/lang/String;)V

    .line 194
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add wrapHeader, index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->log(Ljava/lang/String;)V

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add wrapHeader, order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->log(Ljava/lang/String;)V

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add wrapHeader, context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->log(Ljava/lang/String;)V

    .line 199
    :cond_2
    iput-boolean p3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 200
    const/4 v2, 0x1

    return v2

    .line 179
    :cond_3
    iput p1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    .line 180
    float-to-int v2, p1

    iput v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->index:I

    .line 181
    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->CONTEXT:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 183
    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_4
    invoke-virtual {p2, p0}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->add(Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_0
.end method

.method public static getFullEntryList()Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    .locals 3

    .prologue
    .line 137
    sget-boolean v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->areFullEntriesReady:Z

    if-nez v1, :cond_1

    .line 139
    :try_start_0
    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :try_start_1
    sget-boolean v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->areFullEntriesReady:Z

    if-nez v1, :cond_0

    .line 141
    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 143
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .local v0, e:Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    return-object v1

    .line 143
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPartialWrapHeaders()Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    return-object v0
.end method

.method public static getWrapHeader(J)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 2
    .parameter "id"

    .prologue
    .line 274
    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    return-object v0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 283
    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->TAG:Ljava/lang/String;

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

    .line 285
    return-void
.end method

.method public static removeWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z
    .locals 5
    .parameter "entry"
    .parameter "outWrapHeaderList"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 234
    .local v0, key:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 235
    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->TAG:Ljava/lang/String;

    const-string v2, "The wrap header information is not enough. It doesn\'t include id."

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    .line 240
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->removeWrapHeader(Ljava/lang/Long;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    move-result v1

    goto :goto_0
.end method

.method public static removeWrapHeader(Ljava/lang/Long;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z
    .locals 3
    .parameter "key"
    .parameter "outWrapHeaderList"

    .prologue
    .line 254
    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 256
    .local v0, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    if-nez v0, :cond_0

    .line 257
    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->TAG:Ljava/lang/String;

    const-string v2, "The wrap header doesn\'t exist in header list."

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    .line 261
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->remove(Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    .line 262
    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static startProvider()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub$1;

    invoke-direct {v1}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method


# virtual methods
.method public loadEntryList()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->onLoadEntryList(Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V

    .line 115
    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    monitor-enter v1

    .line 116
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->areFullEntriesReady:Z

    .line 117
    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
