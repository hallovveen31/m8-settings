.class abstract Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;
.super Ljava/lang/Object;
.source "HtcEntryProviderImpl.java"

# interfaces
.implements Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider",
        "<",
        "Lcom/android/settings/framework/activity/HtcWrapHeader;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/framework/activity/HtcWrapHeader;",
        ">;>;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MAXIMUM_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mAreFullEntriesReady:Z

.field private final mWrapHeaderMap:Ljava/util/HashMap;
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

.field private final mWrapHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->TAG:Ljava/lang/String;

    .line 33
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaderMap:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mAreFullEntriesReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->startInBackground()V

    return-void
.end method

.method private dumpEntry(Ljava/lang/String;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 6
    .parameter "methodName"
    .parameter "entry"

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v1, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 323
    .local v1, id:J
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 327
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 328
    const-string v3, " (essential entry)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :goto_0
    iget-object v3, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v3, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    if-lez v3, :cond_0

    .line 334
    const-string v3, "\n - title: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    iget-object v5, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v5, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_0
    const-string v3, "\n - index: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->log(Ljava/lang/String;)V

    .line 345
    return-void

    .line 330
    :cond_1
    const-string v3, " (non-essential entry)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 348
    sget-object v0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "message"
    .parameter "e"

    .prologue
    .line 352
    sget-object v0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    return-void
.end method

.method private startInBackground()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->onBuildEntryList()V

    .line 77
    iget-object v1, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    monitor-enter v1

    .line 78
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mAreFullEntriesReady:Z

    .line 79
    iget-object v0, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;)Z
    .locals 4
    .parameter "entry"

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const-string v2, "The entry should not be null."

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->logE(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    const/4 v2, 0x0

    .line 220
    :goto_0
    return v2

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v2, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v0, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 211
    .local v0, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaderMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 218
    const-string v2, "addEntry()"

    invoke-direct {p0, v2, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->dumpEntry(Ljava/lang/String;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    .line 220
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z
    .locals 1
    .parameter "entry"
    .parameter "order"

    .prologue
    .line 234
    int-to-float v0, p2

    iput v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;)Z

    move-result v0

    return v0
.end method

.method protected addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z
    .locals 1
    .parameter "entry"
    .parameter "order"
    .parameter "isHidden"

    .prologue
    .line 252
    int-to-float v0, p2

    iput v0, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->order:F

    .line 253
    iput-boolean p3, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addEntry(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;)Z

    move-result v0

    return v0
.end method

.method public getEntryByAnchor(Ljava/lang/String;)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 7
    .parameter "anchor"

    .prologue
    .line 264
    iget-object v4, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 265
    .local v3, size:I
    new-array v0, v3, [Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 268
    .local v0, array:[Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-object v4, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #array:[Lcom/android/settings/framework/activity/HtcWrapHeader;
    check-cast v0, [Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 271
    .restart local v0       #array:[Lcom/android/settings/framework/activity/HtcWrapHeader;
    array-length v3, v0

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 277
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 280
    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 281
    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    aget-object v4, v0, v2

    .line 310
    .end local v2           #i:I
    :goto_1
    return-object v4

    .line 277
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v2           #i:I
    :cond_1
    sget-boolean v4, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v4, "[DESIGN_BUG] couldn\'t find the target anchor"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n Please check your anchor or contact Settings RDs."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n - anchor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v4, "\n\n Settings\' anchors: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 301
    const-string v4, "\n - ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    iget-object v5, v5, Lcom/android/settings/framework/activity/HtcWrapHeader;->anchor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 307
    :cond_2
    sget-object v4, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public bridge synthetic getEntryByAnchor(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getEntryByAnchor(Ljava/lang/String;)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v0

    return-object v0
.end method

.method public getEntryById(J)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 2
    .parameter "id"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaderMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    return-object v0
.end method

.method public bridge synthetic getEntryById(J)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getEntryById(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v0

    return-object v0
.end method

.method public getFullEntryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v1, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mAreFullEntriesReady:Z

    if-nez v1, :cond_1

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mAreFullEntriesReady:Z

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 188
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 188
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

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to invoke getFullEntryList()."

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPartialEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl$1;-><init>(Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method

.method public updateEntryList()V
    .locals 11

    .prologue
    .line 85
    const/4 v5, 0x0

    .line 87
    .local v5, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-boolean v7, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 88
    new-instance v5, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v5           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 89
    .restart local v5       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-virtual {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->log(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 93
    .local v2, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 99
    .local v1, SIZE:I
    const/4 v0, 0x0

    .line 104
    .local v0, LOCAL_DEBUG:Z
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1b

    .line 105
    iget-object v7, p0, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->mWrapHeaders:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 106
    .local v6, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-object v7, v6, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v7, v7, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 108
    .local v4, id:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090303

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f09031c

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 110
    :cond_1
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateOperator(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    .line 104
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f0902fa

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 112
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateWifi(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f0902fe

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 114
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateBluetooth(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090300

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    .line 116
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateMobileNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090306

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 118
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updatePersonalize(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 119
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090318

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    .line 120
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateCall(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 121
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f0902fd

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    .line 122
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateInfrared(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 123
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090304

    cmp-long v7, v7, v9

    if-nez v7, :cond_a

    .line 124
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateDualNetwork(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 125
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f09031b

    cmp-long v7, v7, v9

    if-nez v7, :cond_b

    .line 126
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateAppAssociation(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto :goto_1

    .line 127
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090311

    cmp-long v7, v7, v9

    if-nez v7, :cond_c

    .line 128
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateDisplay(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 129
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090319

    cmp-long v7, v7, v9

    if-nez v7, :cond_d

    .line 130
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateCharm(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 131
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090313

    cmp-long v7, v7, v9

    if-nez v7, :cond_e

    .line 132
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateBeatsAudio(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 133
    :cond_e
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090315

    cmp-long v7, v7, v9

    if-nez v7, :cond_f

    .line 134
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateUmc(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 135
    :cond_f
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090316

    cmp-long v7, v7, v9

    if-nez v7, :cond_10

    .line 136
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateBoomSound(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 137
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090317

    cmp-long v7, v7, v9

    if-nez v7, :cond_11

    .line 138
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateHarman(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 139
    :cond_11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f09030a

    cmp-long v7, v7, v9

    if-nez v7, :cond_12

    .line 140
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateBackupAssistantPlus(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 141
    :cond_12
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090302

    cmp-long v7, v7, v9

    if-nez v7, :cond_13

    .line 142
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateMediaLink(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 143
    :cond_13
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090325

    cmp-long v7, v7, v9

    if-nez v7, :cond_14

    .line 144
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateActivateDevice(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 145
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f09030f

    cmp-long v7, v7, v9

    if-nez v7, :cond_15

    .line 146
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateBackupAndReset(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 147
    :cond_15
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090310

    cmp-long v7, v7, v9

    if-nez v7, :cond_16

    .line 148
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateTransferMyStuff(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 149
    :cond_16
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090308

    cmp-long v7, v7, v9

    if-nez v7, :cond_17

    .line 150
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateUser(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 151
    :cond_17
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090312

    cmp-long v7, v7, v9

    if-nez v7, :cond_18

    .line 152
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateFingerprint(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 153
    :cond_18
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f090324

    cmp-long v7, v7, v9

    if-nez v7, :cond_19

    .line 154
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateDevelopment(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 155
    :cond_19
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f0902ff

    cmp-long v7, v7, v9

    if-nez v7, :cond_1a

    .line 156
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateHtcMini(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 157
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x7f0902fb

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 158
    invoke-static {v2, v6}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->updateVoWifi(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    goto/16 :goto_1

    .line 167
    .end local v4           #id:Ljava/lang/Long;
    .end local v6           #wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    :cond_1b
    sget-boolean v7, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->DEBUG:Z

    if-eqz v7, :cond_1c

    .line 168
    invoke-virtual {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->log(Ljava/lang/String;)V

    .line 170
    :cond_1c
    return-void
.end method
