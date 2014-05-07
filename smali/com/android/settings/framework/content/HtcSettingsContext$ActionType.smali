.class public final enum Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
.super Ljava/lang/Enum;
.source "HtcSettingsContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/content/HtcSettingsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

.field public static final enum SEND_BROADCAST:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

.field public static final enum START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

.field public static final enum START_ACTIVITY_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

.field public static final enum START_ACTIVITY_FROM_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

.field public static final enum START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

.field public static final enum START_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

.field public static final enum START_SERVICE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    const-string v1, "SEND_BROADCAST"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->SEND_BROADCAST:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 73
    new-instance v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    const-string v1, "START_SERVICE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_SERVICE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 74
    new-instance v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    const-string v1, "START_ACTIVITY"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 111
    new-instance v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    const-string v1, "START_ACTIVITY_FOR_RESULT"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 120
    new-instance v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    const-string v1, "START_ACTIVITY_FROM_FRAGMENT_FOR_RESULT"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY_FROM_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 138
    new-instance v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    const-string v1, "START_FRAGMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 146
    new-instance v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    const-string v1, "START_FRAGMENT_FOR_RESULT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->SEND_BROADCAST:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_SERVICE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY_FROM_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->$VALUES:[Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->$VALUES:[Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method
