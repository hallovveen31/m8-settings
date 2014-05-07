.class public final enum Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
.super Ljava/lang/Enum;
.source "HtcAppsStatistician.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcAppsStatistician;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

.field public static final enum FUSE_NON_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

.field public static final enum FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

.field public static final enum INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

.field public static final enum NON_FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

.field public static final enum NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

.field public static final enum SD_CARD:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    const-string v1, "INTERNAL_STORAGE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    const-string v1, "FUSE_PRIMARY_STORAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    const-string v1, "NON_FUSE_PRIMARY_STORAGE"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NON_FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    const-string v1, "NOT_SUPPORT"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    const-string v1, "SD_CARD"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    const-string v1, "FUSE_NON_PRIMARY_STORAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->FUSE_NON_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NON_FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->FUSE_NON_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->$VALUES:[Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->$VALUES:[Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    return-object v0
.end method
