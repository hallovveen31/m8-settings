.class final enum Lcom/android/settings/GyroscopeCalibration$DPIType;
.super Ljava/lang/Enum;
.source "GyroscopeCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GyroscopeCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DPIType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/GyroscopeCalibration$DPIType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/GyroscopeCalibration$DPIType;

.field public static final enum DPI_160:Lcom/android/settings/GyroscopeCalibration$DPIType;

.field public static final enum DPI_240:Lcom/android/settings/GyroscopeCalibration$DPIType;

.field public static final enum DPI_320:Lcom/android/settings/GyroscopeCalibration$DPIType;

.field public static final enum DPI_480:Lcom/android/settings/GyroscopeCalibration$DPIType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/android/settings/GyroscopeCalibration$DPIType;

    const-string v1, "DPI_480"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GyroscopeCalibration$DPIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_480:Lcom/android/settings/GyroscopeCalibration$DPIType;

    new-instance v0, Lcom/android/settings/GyroscopeCalibration$DPIType;

    const-string v1, "DPI_320"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/GyroscopeCalibration$DPIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_320:Lcom/android/settings/GyroscopeCalibration$DPIType;

    new-instance v0, Lcom/android/settings/GyroscopeCalibration$DPIType;

    const-string v1, "DPI_240"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/GyroscopeCalibration$DPIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_240:Lcom/android/settings/GyroscopeCalibration$DPIType;

    new-instance v0, Lcom/android/settings/GyroscopeCalibration$DPIType;

    const-string v1, "DPI_160"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/GyroscopeCalibration$DPIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_160:Lcom/android/settings/GyroscopeCalibration$DPIType;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/GyroscopeCalibration$DPIType;

    sget-object v1, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_480:Lcom/android/settings/GyroscopeCalibration$DPIType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_320:Lcom/android/settings/GyroscopeCalibration$DPIType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_240:Lcom/android/settings/GyroscopeCalibration$DPIType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_160:Lcom/android/settings/GyroscopeCalibration$DPIType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->$VALUES:[Lcom/android/settings/GyroscopeCalibration$DPIType;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/GyroscopeCalibration$DPIType;
    .locals 1
    .parameter "name"

    .prologue
    .line 67
    const-class v0, Lcom/android/settings/GyroscopeCalibration$DPIType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/GyroscopeCalibration$DPIType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/GyroscopeCalibration$DPIType;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->$VALUES:[Lcom/android/settings/GyroscopeCalibration$DPIType;

    invoke-virtual {v0}, [Lcom/android/settings/GyroscopeCalibration$DPIType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/GyroscopeCalibration$DPIType;

    return-object v0
.end method
