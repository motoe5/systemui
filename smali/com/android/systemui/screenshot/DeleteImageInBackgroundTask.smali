.class Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 424
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 426
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 428
    array-length v3, p1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    return-object v5

    .line 430
    :cond_0
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 431
    .local v2, "screenshotUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 433
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-object v5

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method
