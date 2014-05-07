.class public final enum Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
.super Ljava/lang/Enum;
.source "HtcAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

.field public static final enum ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

.field public static final enum NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

.field public static final enum SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;


# instance fields
.field private mTransitionAnimationScale:F

.field private mWindowAnimationScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    const-string v1, "NO_ANIMATIONS"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    new-instance v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    const-string v1, "SOME_ANIMATIONS"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    new-instance v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    const-string v1, "ALL_ANIMATIONS"

    invoke-direct {v0, v1, v6, v3, v3}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->$VALUES:[Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mWindowAnimationScale:F

    iput p4, p0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mTransitionAnimationScale:F

    return-void
.end method

.method public static toAnimationType(FF)Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    iget v0, v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mWindowAnimationScale:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    iget v0, v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mTransitionAnimationScale:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    iget v0, v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mWindowAnimationScale:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    iget v0, v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mTransitionAnimationScale:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    iget v0, v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mWindowAnimationScale:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    iget v0, v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mTransitionAnimationScale:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
    .locals 1

    const-class v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->$VALUES:[Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    return-object v0
.end method


# virtual methods
.method public getAnimationScales()[F
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAnimationValue()F
    .locals 2

    iget v0, p0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mTransitionAnimationScale:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->mWindowAnimationScale:F

    add-float/2addr v0, v1

    return v0
.end method
