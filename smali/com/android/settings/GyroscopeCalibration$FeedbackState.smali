.class public final enum Lcom/android/settings/GyroscopeCalibration$FeedbackState;
.super Ljava/lang/Enum;
.source "GyroscopeCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GyroscopeCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeedbackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/GyroscopeCalibration$FeedbackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/GyroscopeCalibration$FeedbackState;

.field public static final enum FAIL:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

.field public static final enum NOT_COMPLETED:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

.field public static final enum PASS:Lcom/android/settings/GyroscopeCalibration$FeedbackState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    const-string v1, "PASS"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GyroscopeCalibration$FeedbackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->PASS:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    new-instance v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/GyroscopeCalibration$FeedbackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->FAIL:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    new-instance v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    const-string v1, "NOT_COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/GyroscopeCalibration$FeedbackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->NOT_COMPLETED:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    sget-object v1, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->PASS:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->FAIL:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->NOT_COMPLETED:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->$VALUES:[Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/GyroscopeCalibration$FeedbackState;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/GyroscopeCalibration$FeedbackState;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->$VALUES:[Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    invoke-virtual {v0}, [Lcom/android/settings/GyroscopeCalibration$FeedbackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    return-object v0
.end method
