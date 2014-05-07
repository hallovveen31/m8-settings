.class final enum Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;
.super Ljava/lang/Enum;
.source "HtcBeatsAudioState.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

.field public static final enum STATE_ERROR:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

.field public static final enum STATE_INIT:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

.field public static final enum STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

.field public static final enum STATE_ON:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

.field public static final enum STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;


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
    new-instance v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_ERROR:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    .line 23
    new-instance v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_INIT:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    .line 29
    new-instance v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    const-string v1, "STATE_SYNC"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    .line 32
    new-instance v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    .line 35
    new-instance v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    const-string v1, "STATE_ON"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_ON:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_ERROR:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_INIT:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_SYNC:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_OFF:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->STATE_ON:Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->$VALUES:[Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->$VALUES:[Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioState;

    return-object v0
.end method
