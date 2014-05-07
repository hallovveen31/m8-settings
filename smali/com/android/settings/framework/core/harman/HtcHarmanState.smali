.class final enum Lcom/android/settings/framework/core/harman/HtcHarmanState;
.super Ljava/lang/Enum;
.source "HtcHarmanState.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/harman/HtcHarmanState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/harman/HtcHarmanState;

.field public static final enum STATE_ERROR:Lcom/android/settings/framework/core/harman/HtcHarmanState;

.field public static final enum STATE_INIT:Lcom/android/settings/framework/core/harman/HtcHarmanState;

.field public static final enum STATE_OFF:Lcom/android/settings/framework/core/harman/HtcHarmanState;

.field public static final enum STATE_ON:Lcom/android/settings/framework/core/harman/HtcHarmanState;

.field public static final enum STATE_SYNC:Lcom/android/settings/framework/core/harman/HtcHarmanState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/harman/HtcHarmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_ERROR:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    .line 23
    new-instance v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/harman/HtcHarmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_INIT:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    .line 29
    new-instance v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;

    const-string v1, "STATE_SYNC"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/harman/HtcHarmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_SYNC:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    .line 32
    new-instance v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/harman/HtcHarmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_OFF:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    .line 35
    new-instance v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;

    const-string v1, "STATE_ON"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/harman/HtcHarmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_ON:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/framework/core/harman/HtcHarmanState;

    sget-object v1, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_ERROR:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_INIT:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_SYNC:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_OFF:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/harman/HtcHarmanState;->STATE_ON:Lcom/android/settings/framework/core/harman/HtcHarmanState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;->$VALUES:[Lcom/android/settings/framework/core/harman/HtcHarmanState;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/harman/HtcHarmanState;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/harman/HtcHarmanState;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/settings/framework/core/harman/HtcHarmanState;->$VALUES:[Lcom/android/settings/framework/core/harman/HtcHarmanState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/harman/HtcHarmanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/harman/HtcHarmanState;

    return-object v0
.end method
