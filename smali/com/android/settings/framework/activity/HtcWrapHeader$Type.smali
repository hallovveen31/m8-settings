.class public final enum Lcom/android/settings/framework/activity/HtcWrapHeader$Type;
.super Ljava/lang/Enum;
.source "HtcWrapHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/HtcWrapHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/HtcWrapHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

.field public static final enum CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

.field public static final enum NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

.field public static final enum SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

.field public static final enum SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    const-string v1, "CATEGORY"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    const-string v1, "SWITCH_AND_SETTINGS"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    new-instance v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    const-string v1, "SWITCH_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->NORMAL:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_AND_SETTINGS:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->$VALUES:[Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

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

.method public static getHeaderTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/HtcWrapHeader$Type;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/HtcWrapHeader$Type;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->$VALUES:[Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    return-object v0
.end method
