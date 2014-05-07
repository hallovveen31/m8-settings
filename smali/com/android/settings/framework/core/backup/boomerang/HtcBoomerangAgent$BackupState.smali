.class public final enum Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;
.super Ljava/lang/Enum;
.source "HtcBoomerangAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

.field public static final enum BACKUP:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

.field public static final enum READY:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

.field public static final enum RESTORE:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

.field public static final enum UNKNOWN:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    const-string v1, "BACKUP"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->BACKUP:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    .line 43
    new-instance v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    const-string v1, "RESTORE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->RESTORE:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    .line 46
    new-instance v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->READY:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    .line 49
    new-instance v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->UNKNOWN:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->BACKUP:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->RESTORE:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->READY:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->UNKNOWN:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->$VALUES:[Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->$VALUES:[Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    return-object v0
.end method
