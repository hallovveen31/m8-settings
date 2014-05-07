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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->areFullEntriesReady:Z

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->CONTEXT:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/framework/activity/HtcEntryManager;->getEntryProvider()Lcom/android/settings/framework/activity/HtcIEntryProvider;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sInstance:Lcom/android/settings/framework/activity/HtcIEntryProvider;

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;-><init>(I)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->startProvider()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0

    sput-object p0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->mResource:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/settings/framework/activity/HtcIEntryProvider;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sInstance:Lcom/android/settings/framework/activity/HtcIEntryProvider;

    return-object v0
.end method

.method public static addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    move-result v0

    return v0
.end method

.method public static addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z
    .locals 6

    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    if-eqz v1, :cond_3

    move-object p0, v1

    sget-boolean v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->DEBUG:Z

    if-eqz v2, :cond_0

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

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->DEBUG:Z

    if-eqz v2, :cond_2

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

    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    if-lez v2, :cond_1

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

    :cond_2
    iput-boolean p3, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    const/4 v2, 0x1

    return v2

    :cond_3
    iput p1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    float-to-int v2, p1

    iput v2, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->index:I

    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->CONTEXT:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/HtcWrapHeader;->prepareExtraInfo(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p2, p0}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->add(Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_0
.end method

.method public static getFullEntryList()Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    .locals 3

    sget-boolean v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->areFullEntriesReady:Z

    if-nez v1, :cond_1

    :try_start_0
    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-boolean v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->areFullEntriesReady:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    return-object v1

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

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPartialWrapHeaders()Lcom/android/settings/framework/activity/HtcWrapHeaderList;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    return-object v0
.end method

.method public static getWrapHeader(J)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 2

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

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

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

    return-void
.end method

.method public static removeWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z
    .locals 5

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->TAG:Ljava/lang/String;

    const-string v2, "The wrap header information is not enough. It doesn\'t include id."

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->removeWrapHeader(Ljava/lang/Long;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    move-result v1

    goto :goto_0
.end method

.method public static removeWrapHeader(Ljava/lang/Long;Lcom/android/settings/framework/activity/HtcWrapHeaderList;)Z
    .locals 3

    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->TAG:Ljava/lang/String;

    const-string v2, "The wrap header doesn\'t exist in header list."

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->remove(Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static startProvider()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub$1;

    invoke-direct {v1}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public loadEntryList()V
    .locals 2

    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->onLoadEntryList(Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V

    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->areFullEntriesReady:Z

    sget-object v0, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->sWrapHeaders:Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
