.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;
.source "DrawableCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi17Impl"
.end annotation


# static fields
.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 139
    sget-boolean v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethodFetched:Z

    if-nez v2, :cond_0

    .line 142
    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v3, "setLayoutDirection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 141
    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 143
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    sput-boolean v7, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethodFetched:Z

    .line 150
    :cond_0
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 152
    :try_start_1
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    return v7

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "DrawableCompatApi17"

    const-string/jumbo v3, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DrawableCompatApi17"

    const-string/jumbo v3, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    sput-object v9, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v8
.end method
