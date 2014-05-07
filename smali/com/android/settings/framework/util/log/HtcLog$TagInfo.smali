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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getFullTag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    if-eqz v0, :cond_1

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

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "Settings:"

    iput-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mFullTag:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->mSubTag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
