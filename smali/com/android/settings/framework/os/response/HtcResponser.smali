.class public Lcom/android/settings/framework/os/response/HtcResponser;
.super Ljava/lang/Object;
.source "HtcResponser.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/os/response/HtcResponser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/os/response/HtcResponser;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mOwner:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/os/response/HtcResponser;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    .line 45
    iput-object p0, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mOwner:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .parameter "owner"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/os/response/HtcResponser;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mOwner:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/os/response/HtcResponser;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    .line 55
    iput-object p1, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mOwner:Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public final addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 101
    :goto_0
    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final broadcast(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 78
    iget-object v4, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    monitor-enter v4

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 80
    .local v0, SIZE:I
    new-array v1, v0, [Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;

    .line 81
    .local v1, clients:[Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;
    iget-object v3, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 85
    aget-object v3, v1, v2

    invoke-interface {v3, p1}, Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;->onResponse(Landroid/os/Message;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0           #SIZE:I
    .end local v1           #clients:[Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 87
    .restart local v0       #SIZE:I
    .restart local v1       #clients:[Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;
    .restart local v2       #i:I
    :cond_0
    return-void
.end method

.method public final checkLeakedResponseListener()V
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has leaked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-class v1, Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, " that was originally registered here."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, " Are you missing to a call to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "removeOnResponseListener(...)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/android/settings/framework/os/response/HtcResponser;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public removeAllOnResponseListeners()V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final removeOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/framework/os/response/HtcResponser;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 113
    :goto_0
    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
