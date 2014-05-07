.class final enum Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;
.super Ljava/lang/Enum;
.source "HtcFingerprintUpdateFpList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum AddFingerprint:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum ChangeAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum ConfirmCredentials:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum DeleteFingerprint:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum EnableFingerprintLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum Init:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum SetQuickLauch:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

.field public static final enum Show:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "Init"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Init:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 130
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "Show"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Show:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 131
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "AddFingerprint"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->AddFingerprint:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 132
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "ConfirmCredentials"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->ConfirmCredentials:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 133
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "EnableFingerprintLock"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->EnableFingerprintLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 134
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "ChangeAltLock"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->ChangeAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 135
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "SetQuickLauch"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->SetQuickLauch:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 136
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "DeleteFingerprint"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->DeleteFingerprint:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 137
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    const-string v1, "Finish"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Init:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Show:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->AddFingerprint:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->ConfirmCredentials:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->EnableFingerprintLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->ChangeAltLock:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->SetQuickLauch:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->DeleteFingerprint:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    return-object v0
.end method
