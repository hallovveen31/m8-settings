.class public final enum Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;
.super Ljava/lang/Enum;
.source "HtcFingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

.field public static final enum Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

.field public static final enum Naming:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

.field public static final enum Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

.field public static final enum SetAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

.field public static final enum Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

.field public static final enum Tutorial:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

.field final rightMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

.field final statusImg:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 439
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    const-string v1, "Tutorial"

    const/4 v2, 0x0

    const v3, 0x7f0c01f3

    const v4, 0x7f0c01f8

    const/4 v5, -0x1

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Continue:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Tutorial:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 447
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    const-string v1, "Naming"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Continue:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Naming:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 454
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    const-string v1, "Processing"

    const/4 v2, 0x2

    const v3, 0x7f0c0216

    const v4, 0x7f0c0200

    const v5, 0x7f0202a4

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->RetryDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 461
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    const-string v1, "Success"

    const/4 v2, 0x3

    const v3, 0x7f0c01fa

    const/4 v4, -0x1

    const v5, 0x7f0202a3

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Continue:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 468
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    const-string v1, "Fail"

    const/4 v2, 0x4

    const v3, 0x7f0c01fb

    const v4, 0x7f0c0200

    const v5, 0x7f0202a5

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Retry:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 475
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    const-string v1, "SetAltLock"

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    sget-object v6, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    sget-object v7, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Continue:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->SetAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    .line 437
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Tutorial:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Naming:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->SetAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;)V
    .locals 0
    .parameter
    .parameter
    .parameter "headerMessage"
    .parameter "footerMessage"
    .parameter "statusImg"
    .parameter "leftMode"
    .parameter "rightMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;",
            "Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 494
    iput p3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->headerMessage:I

    .line 495
    iput-object p6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->leftMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    .line 496
    iput-object p7, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->rightMode:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    .line 497
    iput p4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->footerMessage:I

    .line 498
    iput p5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->statusImg:I

    .line 499
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;
    .locals 1
    .parameter "name"

    .prologue
    .line 437
    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    return-object v0
.end method
