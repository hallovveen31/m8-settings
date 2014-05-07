.class public Lcom/android/settings/framework/activity/HtcWrapHeaderList;
.super Ljava/lang/Object;
.source "HtcWrapHeaderList.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWrapHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/HtcWrapHeaderList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "maximumCapacity"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public add(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(I)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 1
    .parameter "index"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    return-object v0
.end method

.method public remove(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public sortByOrder()V
    .locals 6

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/framework/activity/HtcWrapHeader$OrderComparator;

    invoke-direct {v5}, Lcom/android/settings/framework/activity/HtcWrapHeader$OrderComparator;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, idx:I
    iget-object v4, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move v3, v2

    .end local v2           #idx:I
    .local v3, idx:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 63
    .local v0, header:Lcom/android/settings/framework/activity/HtcWrapHeader;
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iput v3, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->index:I

    move v3, v2

    .end local v2           #idx:I
    .restart local v3       #idx:I
    goto :goto_0

    .line 65
    .end local v0           #header:Lcom/android/settings/framework/activity/HtcWrapHeader;
    :cond_0
    monitor-exit p0

    .line 66
    return-void

    .line 65
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #idx:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public toArray()[Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 87
    .local v0, array:[Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcWrapHeaderList;->mWrapHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    monitor-exit p0

    .line 89
    return-object v0

    .line 88
    .end local v0           #array:[Lcom/android/settings/framework/activity/HtcWrapHeader;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
