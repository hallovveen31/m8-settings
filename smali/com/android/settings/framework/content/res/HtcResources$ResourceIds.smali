.class public Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;
.super Ljava/lang/Object;
.source "HtcResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/content/res/HtcResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceIds"
.end annotation


# instance fields
.field private mResIds:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 2
    .parameter "resIds"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'resIds\' should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->mResIds:[I

    .line 125
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->mResIds:[I

    return-object v0
.end method


# virtual methods
.method public getResIds()[I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->mResIds:[I

    return-object v0
.end method
