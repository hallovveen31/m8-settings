.class Lcom/android/settings/framework/search/SuggestionProvider$Target;
.super Ljava/lang/Object;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/search/SuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Target"
.end annotation


# static fields
.field private static count:I


# instance fields
.field enabled:Z

.field id:Ljava/lang/String;

.field index:I

.field intent:Landroid/content/Intent;

.field searchKeyword:Ljava/lang/String;

.field summary:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->count:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->title:Ljava/lang/String;

    sget v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;->count:I

    iput v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->index:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->enabled:Z

    return-void
.end method


# virtual methods
.method getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method setEnabled(Z)Lcom/android/settings/framework/search/SuggestionProvider$Target;
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->enabled:Z

    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->searchKeyword:Ljava/lang/String;

    return-object p0
.end method
