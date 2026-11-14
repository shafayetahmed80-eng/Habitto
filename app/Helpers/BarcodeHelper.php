<?php

namespace App\Helpers;

class BarcodeHelper
{
    /**
     * Generate Code 128 barcode as pure inline SVG
     */
    public static function generateCode128Svg(string $code, int $height = 50, int $scale = 2): string
    {
        $code = trim($code);
        if (empty($code)) {
            return '';
        }

        // Code 128 Table B encoding patterns
        $patterns = [
            ' ' => '212222', '!' => '222122', '"' => '222221', '#' => '121223', '$' => '121322',
            '%' => '131222', '&' => '122213', '\'' => '122312', '(' => '132212', ')' => '221213',
            '*' => '221312', '+' => '231212', ',' => '112232', '-' => '122132', '.' => '122231',
            '/' => '113222', '0' => '123122', '1' => '123221', '2' => '223211', '3' => '221132',
            '4' => '221231', '5' => '213212', '6' => '223112', '7' => '312131', '8' => '311222',
            '9' => '321122', ':' => '321221', ';' => '312212', '<' => '322112', '=' => '322211',
            '>' => '212123', '?' => '212321', '@' => '232121', 'A' => '111323', 'B' => '131123',
            'C' => '131321', 'D' => '112313', 'E' => '132113', 'F' => '132311', 'G' => '211313',
            'H' => '231113', 'I' => '231311', 'J' => '112133', 'K' => '112331', 'L' => '132131',
            'M' => '113123', 'N' => '113321', 'O' => '133121', 'P' => '313121', 'Q' => '211331',
            'R' => '231131', 'S' => '213113', 'T' => '213311', 'U' => '213131', 'V' => '311123',
            'W' => '311321', 'X' => '331121', 'Y' => '312113', 'Z' => '312311', '[' => '332111',
            '\\' => '314111', ']' => '221411', '^' => '431111', '_' => '111224', '`' => '111422',
            'a' => '121124', 'b' => '121421', 'c' => '141122', 'd' => '141221', 'e' => '112214',
            'f' => '112412', 'g' => '122114', 'h' => '122411', 'i' => '142112', 'j' => '142211',
            'k' => '241211', 'l' => '221114', 'm' => '413111', 'n' => '241112', 'o' => '134111',
            'p' => '111242', 'q' => '121142', 'r' => '121241', 's' => '114212', 't' => '124112',
            'u' => '124211', 'v' => '411212', 'w' => '421112', 'x' => '421211', 'y' => '212141',
            'z' => '214121', '{' => '412121', '|' => '111143', '}' => '111341', '~' => '131141',
            'START_B' => '211214',
            'STOP' => '2331112'
        ];

        $sequence = $patterns['START_B'];
        $checksum = 104; // Start code B value

        for ($i = 0; $i < strlen($code); $i++) {
            $char = $code[$i];
            if (isset($patterns[$char])) {
                $sequence .= $patterns[$char];
                $val = ord($char) - 32;
                $checksum += $val * ($i + 1);
            }
        }

        // Checksum character
        $checkVal = $checksum % 103;
        $keys = array_keys($patterns);
        if (isset($keys[$checkVal])) {
            $sequence .= $patterns[$keys[$checkVal]];
        }

        $sequence .= $patterns['STOP'];

        $totalModules = 0;
        for ($i = 0; $i < strlen($sequence); $i++) {
            $totalModules += (int) $sequence[$i];
        }

        $svgWidth = $totalModules * $scale + 20;
        $svgHeight = $height + 18;

        $svg = '<svg xmlns="http://www.w3.org/2000/svg" width="' . $svgWidth . '" height="' . $svgHeight . '" viewBox="0 0 ' . $svgWidth . ' ' . $svgHeight . '" style="display:inline-block; max-width:100%;">';
        $svg .= '<rect width="100%" height="100%" fill="#ffffff" />';

        $x = 10;
        $isBar = true;

        for ($i = 0; $i < strlen($sequence); $i++) {
            $width = ((int) $sequence[$i]) * $scale;
            if ($isBar) {
                $svg .= '<rect x="' . $x . '" y="0" width="' . $width . '" height="' . $height . '" fill="#000000" />';
            }
            $x += $width;
            $isBar = !$isBar;
        }

        // Add text label below barcode
        $svg .= '<text x="' . ($svgWidth / 2) . '" y="' . ($height + 14) . '" font-family="monospace" font-size="12" font-weight="bold" fill="#000000" text-anchor="middle" letter-spacing="1">' . htmlspecialchars($code) . '</text>';
        $svg .= '</svg>';

        return $svg;
    }
}
