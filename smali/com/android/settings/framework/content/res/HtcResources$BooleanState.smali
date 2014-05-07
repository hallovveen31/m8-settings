.class public Lcom/android/settings/framework/content/res/HtcResources$BooleanState;
.super Ljava/lang/Object;
.source "HtcResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/content/res/HtcResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanState"
.end annotation


# instance fields
.field private mStates:[Z


# direct methods
.method public varargs constructor <init>([Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'states\' should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->mStates:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/content/res/HtcResources$BooleanState;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->mStates:[Z

    return-object v0
.end method


# virtual methods
.method public getStates()[Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->mStates:[Z

    return-object v0
.end method
