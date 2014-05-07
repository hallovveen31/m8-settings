.class public Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags$Region;
.super Ljava/lang/Object;
.source "HtcIFeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# static fields
.field public static final ARABIC:I = 0x7

.field public static final ASIA:I = 0x5

.field public static final CHINA:I = 0x3

.field public static final EUROPE:I = 0x6

.field public static final GLOBAL:I = 0x0

.field public static final HK:I = 0x8

.field public static final JAPAN:I = 0x4

.field public static final KEY:Ljava/lang/String; = "region"

.field public static final MIDDLE_EAST:I = 0xc

.field public static final MMR:I = 0xa

.field public static final NORTH_AMERICA:I = 0x1

.field public static final PACIFIC:I = 0xb

.field public static final SOUTH_AMERICA:I = 0x2

.field public static final TW:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Global"

    goto :goto_0

    :pswitch_1
    const-string v0, "North America"

    goto :goto_0

    :pswitch_2
    const-string v0, "South America"

    goto :goto_0

    :pswitch_3
    const-string v0, "China"

    goto :goto_0

    :pswitch_4
    const-string v0, "Japan"

    goto :goto_0

    :pswitch_5
    const-string v0, "Asia"

    goto :goto_0

    :pswitch_6
    const-string v0, "Europe"

    goto :goto_0

    :pswitch_7
    const-string v0, "Arabic"

    goto :goto_0

    :pswitch_8
    const-string v0, "HK"

    goto :goto_0

    :pswitch_9
    const-string v0, "TW"

    goto :goto_0

    :pswitch_a
    const-string v0, "MMR"

    goto :goto_0

    :pswitch_b
    const-string v0, "Pacific"

    goto :goto_0

    :pswitch_c
    const-string v0, "Middle East"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
