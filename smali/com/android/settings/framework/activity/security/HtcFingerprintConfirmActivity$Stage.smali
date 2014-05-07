.class public final enum Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;
.super Ljava/lang/Enum;
.source "HtcFingerprintConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

.field public static final enum Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

.field public static final enum Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

.field public static final enum Success:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

.field public static final enum UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final statusImg:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 175
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    const-string v1, "Processing"

    const v3, 0x7f0c0202

    const v5, 0x7f0202a4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    .line 181
    new-instance v5, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    const-string v6, "Success"

    const v8, 0x7f0c0203

    const v10, 0x7f0202a3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    .line 187
    new-instance v8, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    const-string v9, "Fail"

    const v11, 0x7f0c01fd

    const v13, 0x7f0202a5

    move v10, v14

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    .line 193
    new-instance v8, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    const-string v9, "UseAltLock"

    move v10, v15

    move v11, v4

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Success:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->Fail:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->UseAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "headerMessage"
    .parameter "footerMessage"
    .parameter "statusImg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput p3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->headerMessage:I

    .line 210
    iput p4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->footerMessage:I

    .line 211
    iput p5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->statusImg:I

    .line 212
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;
    .locals 1
    .parameter "name"

    .prologue
    .line 173
    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    return-object v0
.end method
