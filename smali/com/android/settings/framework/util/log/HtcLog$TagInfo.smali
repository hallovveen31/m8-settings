.class public Lcom/android/settings/framework/util/log/HtcLog$TagInfo;
.super Ljava/lang/Object;
.source "HtcLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/log/HtcLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagInfo"
.end annotation


# instance fields
.field private mFullTag:Ljava/lang/String;

.field private mSubTag:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "tag"
    .parameter "owner"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    .line 120
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iput-object v1, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    .line 128
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public getFullTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    .line 149
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    .line 149
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_3
    const-string v0, "Settings:"

    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
